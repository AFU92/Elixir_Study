defmodule OwnersAdmin.Models.Owner do
  use Ecto.Schema

  alias OwnersAdmin.Models.Owner
  import Ecto.Changeset

  schema "owners" do
    field(:name, :string)
    field(:email, :string)
    field(:document, :string)
    field(:phone, :string)
    field(:address, :string)
    field(:property_card, :string)

    timestamps(type: :utc_datetime)
  end

  @attrs [:name, :email, :document, :phone, :address, :property_card]
  @required_attrs [:name, :email, :document, :phone, :address, :property_card]

  @spec changeset(
          %Owner{},
          :invalid | %{optional(:__struct__) => none(), optional(atom() | binary()) => any()}
        ) :: Ecto.Changeset.t()
  def changeset(%Owner{} = owner, params \\ %{}) do
    owner
    |> cast(params, @attrs)
    |> validate_required(@required_attrs)
    |> unique_constraint(:email, name: :owners_email_index)
    |> unique_constraint(:document, name: :owners_document_index)
  end
end
