defmodule IdeaHubWeb.IdeasView do
  use IdeaHubWeb, :view
  alias IdeaHub.Ideas.Schema.Idea

  def render("created.json", %{idea: %Idea{id: id, title: title, description: description}}) do
    %{
      id: id,
      title: title,
      description: description
    }
  end

  def render("view.json", %{ideas: %Idea{id: id, title: title, description: description}}) do
    %{
      id: id,
      title: title,
      description: description
    }
  end

  def render("view_all.json", %{ideas: ideas}) do
    render_many(ideas, IdeaHubWeb.IdeasView, "view.json")
  end
end
