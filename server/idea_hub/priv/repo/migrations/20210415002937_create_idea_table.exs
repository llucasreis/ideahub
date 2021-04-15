defmodule IdeaHub.Repo.Migrations.CreateIdeaTable do
  use Ecto.Migration

  def change do
    create table :ideas do
      add :title, :string
      add :description, :text

      timestamps()
    end
  end
end
