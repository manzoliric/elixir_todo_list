defmodule ElixirTodoListWeb.TodoController do
  use ElixirTodoListWeb, :controller
  alias ElixirTodoList.Todo

  def index(conn, _params) do
    todos = [
      %{
        id: 1,
        title: "Learn Elixir",
        completed: false
      },
      %{
        id: 2,
        title: "Learn Phoenix",
        completed: false
      },
      %{
        id: 3,
        title: "Build a Todo API",
        completed: false
      }
    ]

    conn
    |> put_status(:ok)
    |> json(%{
      todos: todos
    })
  end
end
