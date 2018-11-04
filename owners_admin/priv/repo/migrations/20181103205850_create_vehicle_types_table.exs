defmodule OwnersAdmin.Repo.Migrations.CreateVehicleTypesTable do
  use Ecto.Migration

  def change do
    create table(:vehicle_types) do
      add(:name, :string, null: false)
      add(:volume_max_m3, :float, null: false)
      add(:weight_max_kg, :float, null: false)

      timestamps(type: :timestamptz)
    end

    create(unique_index(:vehicle_types, [:name]))
  end
end
