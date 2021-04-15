defmodule IdeaHubWeb.IdeasView do
  alias IdeaHub.Ideas.Schema.Idea

  def render("created.json", %{idea: %Idea{id: id, title: title, description: description}}) do
    %{
      id: id,
      title: title,
      description: description
    }
  end
end
