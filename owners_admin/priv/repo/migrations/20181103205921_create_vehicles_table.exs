defmodule OwnersAdmin.Repo.Migrations.CreateVehiclesTable do
  use Ecto.Migration

  def change do
    create table(:vehicles) do
      add(:plate, :string, null: false)
      add(:model, :string, null: false)
      add(:soat_expiration_date, :date, null: false)

      add(:owner_id, references(:owners, on_delete: :nothing))
      add(:brand_id, references(:brands, on_delete: :nothing))
      add(:vehicle_type_id, references(:vehicle_types, on_delete: :nothing))

      timestamps(type: :timestamptz)
    end

    create(unique_index(:vehicles, [:plate]))
  end
end
