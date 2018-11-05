defmodule OwnersAdmin.Models.Brand do
  use Ecto.Schema

  alias OwnersAdmin.Models.Brand
  import Ecto.Changeset

  schema "brands" do
    field(:name, :string)

    timestamps(type: :utc_datetime)
  end

  @spec changeset(
          %OwnersAdmin.Models.Brand{},
          :invalid | %{optional(:__struct__) => none(), optional(atom() | binary()) => any()}
        ) :: Ecto.Changeset.t()
  def changeset(%Brand{} = brand, params \\ %{}) do
    brand
    # Castear los datos del mapa al struct
    |> cast(params, [:name])
    # Validar los campos requeridos
    |> validate_required([:name], message: "Please send a name")
    # Validar los datos que son únicos
    |> unique_constraint(:name, name: :brands_name_index)
  end
end
