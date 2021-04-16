defmodule IdeaHub.Idea do
  alias IdeaHub.Ideas.UseCase

  defdelegate create_idea(params), to: UseCase.Create, as: :execute
  defdelegate get_all, to: UseCase.GetAll, as: :execute
  defdelegate get_by_id(params), to: UseCase.GetById, as: :execute
end
