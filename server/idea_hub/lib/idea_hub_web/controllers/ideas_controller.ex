defmodule IdeaHubWeb.IdeasController do
  use IdeaHubWeb, :controller

  alias IdeaHub.Idea
  alias IdeaHub.Ideas.Schema.Idea, as: IdeaSchema

  def create(conn, params) do
    with {:ok, %IdeaSchema{} = idea} <- Idea.create_idea(params) do
      conn
      |> put_status(:created)
      |> render("created.json", %{idea: idea})
    end
  end

  def get_all(conn, _params) do
    with {:ok, ideas} <- Idea.get_all() do
      conn
      |> put_status(:ok)
      |> render("view_all.json", %{ideas: ideas})
    end
  end
end
