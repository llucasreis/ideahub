defmodule IdeaHub.Ideas.UseCase.Create do
  alias IdeaHub.Repo
  alias IdeaHub.Ideas.Schema.Idea

  def execute(params) do
    params
    |> Idea.changeset()
    |> Repo.insert()
  end
end
