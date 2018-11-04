defmodule OwnersAdmin.Models.Brand do
  use Ecto.Schema

  schema "brands" do
    field :name, :string

    timestamps(type: :utc_datetime)
  end
end
