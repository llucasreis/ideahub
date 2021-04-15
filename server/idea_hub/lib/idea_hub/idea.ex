defmodule IdeaHub.Idea do
  alias IdeaHub.Ideas.UseCase

  defdelegate create_idea(params), to: UseCase.Create, as: :execute
end
