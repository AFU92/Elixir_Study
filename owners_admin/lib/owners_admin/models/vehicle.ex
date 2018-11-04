defmodule OwnersAdmin.Models.Vehicle do
  use Ecto.Schema

  schema "vehicles" do
    field :plate, :string
    field :model, :string
    field :soat_expiration_date, :date

    belongs_to(:owner, OwnersAdmin.Models.Owner, on_replace: :update)
    belongs_to(:brand, OwnersAdmin.Models.Brand, on_replace: :update)
    belongs_to(:vehicle_type, OwnersAdmin.Models.VehicleType, on_replace: :update)

    timestamps(type: :utc_datetime)
  end
end
