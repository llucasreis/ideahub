defmodule IdeaHub.Ideas.Schema.Idea do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}

  @required_params [:title, :description]

  schema "ideas" do
    field :title, :string
    field :description, :string

    timestamps()
  end

  def changeset(idea \\ %__MODULE__{}, params) do
    idea
    |> cast(params, @required_params)
    |> validate_required(@required_params)
    |> validate_length(:title, min: 3)
  end
end
