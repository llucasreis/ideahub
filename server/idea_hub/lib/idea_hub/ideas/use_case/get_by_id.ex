defmodule IdeaHub.Ideas.UseCase.GetById do
  alias Ecto.UUID
  alias IdeaHub.Repo
  alias IdeaHub.Ideas.Schema.Idea

  def execute(id) do
    case UUID.cast(id) do
      :error -> {:error, "Invalid ID format"}
      {:ok, uuid} -> get_by_id(uuid)
    end
  end

  defp get_by_id(uuid) do
    case Repo.get(Idea, uuid) do
      nil -> {:error, "Idea not found!"}
      idea -> {:ok, idea}
    end
  end
end
