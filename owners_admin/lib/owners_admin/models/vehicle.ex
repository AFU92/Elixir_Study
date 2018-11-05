defmodule OwnersAdmin.Models.Vehicle do
  use Ecto.Schema

  alias OwnersAdmin.Models.Vehicle
  import Ecto.Changeset

  schema "vehicles" do
    field(:plate, :string)
    field(:model, :string)
    field(:soat_expiration_date, :date)

    belongs_to(:owner, OwnersAdmin.Models.Owner, on_replace: :update)
    belongs_to(:brand, OwnersAdmin.Models.Brand, on_replace: :update)
    belongs_to(:vehicle_type, OwnersAdmin.Models.VehicleType, on_replace: :update)

    timestamps(type: :utc_datetime)
  end

  @attrs [:plate, :model, :soat_expiration_date, :owner_id, :vehicle_type_id, :brand_id]
  @required_attrs [:plate, :model, :soat_expiration_date, :owner_id, :vehicle_type_id, :brand_id]

  @spec changeset(
          %Vehicle{},
          :invalid | %{optional(:__struct__) => none(), optional(atom() | binary()) => any()}
        ) :: Ecto.Changeset.t()
  def changeset(%Vehicle{} = vehicle, params \\ %{}) do
    vehicle
    |> cast(params, @attrs)
    |> validate_required(@required_attrs)
    |> unique_constraint(:plate, name: :vehicles_plate_index)
  end
end
