defmodule OwnersAdmin.Models.VehicleType do
  use Ecto.Schema

  alias OwnersAdmin.Models.VehicleType
  import Ecto.Changeset

  schema "vehicle_types" do
    field(:name, :string)
    field(:volume_max_m3, :float)
    field(:weight_max_kg, :float)

    timestamps(type: :utc_datetime)
  end

  @attrs [:name, :volume_max_m3, :weight_max_kg]
  @required_attrs [:name, :volume_max_m3, :weight_max_kg]

  @spec changeset(
          %VehicleType{},
          :invalid | %{optional(:__struct__) => none(), optional(atom() | binary()) => any()}
        ) :: Ecto.Changeset.t()
  def changeset(%VehicleType{} = vehicle_type, params \\ %{}) do
    vehicle_type
    |> cast(params, @attrs)
    |> validate_required(@required_attrs)
    |> unique_constraint(:name, name: :vehicle_types_name_index)
  end
end
