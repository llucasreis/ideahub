defmodule IdeaHubWeb.FallbackController do
  use IdeaHubWeb, :controller

  def call(conn, {:error, result}) do
    conn
    |> put_status(:bad_request)
    |> put_view(IdeaHubWeb.ErrorView)
    |> render("400.json", result: result)
  end
end
