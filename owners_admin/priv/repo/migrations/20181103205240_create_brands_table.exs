defmodule OwnersAdmin.Repo.Migrations.CreateBrandsTable do
  use Ecto.Migration

  def change do
    create table(:brands) do
      add(:name, :string, null: false)

      timestamps(type: :timestamptz)
    end

    create(unique_index(:brands, [:name]))
  end
end
