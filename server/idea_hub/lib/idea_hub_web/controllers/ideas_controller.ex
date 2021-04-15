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
end
