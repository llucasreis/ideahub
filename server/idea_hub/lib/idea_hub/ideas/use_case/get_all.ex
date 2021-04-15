defmodule IdeaHub.Ideas.UseCase.GetAll do
  alias IdeaHub.Repo
  alias IdeaHub.Ideas.Schema.Idea

  def execute do
    ideas = Repo.all(Idea)
    {:ok, ideas}
  end
end
