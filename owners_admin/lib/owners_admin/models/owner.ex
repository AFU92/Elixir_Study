defmodule OwnersAdmin.Models.Owner do
  use Ecto.Schema

  schema "owners" do
    field :name, :string
    field :email, :string
    field :document, :string
    field :phone, :string
    field :address, :string
    field :property_card, :string

    timestamps(type: :utc_datetime)
  end
end
