defmodule OwnersAdmin.Repo.Migrations.CreateOwnersTable do
  use Ecto.Migration

  def change do
    create table(:owners) do
      add(:name, :string, null: false)
      add(:email, :string, null: false)
      add(:document, :string, null: false)
      add(:phone, :string, null: false)
      add(:address, :string, null: false)
      add(:property_card, :string, null: false)

      timestamps(type: :timestamptz)
    end

    create(unique_index(:owners, [:email]))
    create(unique_index(:owners, [:document]))
  end
end
