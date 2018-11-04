defmodule OwnersAdmin.Models.VehicleType do
  use Ecto.Schema

  schema "vehicle_types" do
    field :name, :string
    field :volume_max_m3, :float
    field :weight_max_kg, :float

    timestamps(type: :utc_datetime)
  end
end
