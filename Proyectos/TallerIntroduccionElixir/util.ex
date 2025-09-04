defmodule Util do
  def show_message(message) do
    System.cmd("java", ["-cp", ".", "TallerIntroduccionElixir.Mensaje", message])
  end

  # Clausulas: Mismos argumentos
  def input(message, :string) do
    System.cmd("java", ["-cp", ".", "TallerIntroduccionElixir.Mensaje", "input", message])
    |> elem(0)
    |> String.trim()
  end

  def input(message, :integer) do
    try do
      message
      |> input(:string)
      |> String.to_integer()
    rescue
      ArgumentError ->
        show_message("Error: Typed value is not a valid integer.")
        input(message, :integer)
    end
  end

  def input(message, :float) do
    try do
      message
      |> input(:string)
      |> Float.parse()
      |> elem(0)
    rescue
      ArgumentError ->
        show_message("Error: Typed value is not a valid decimal")
        input(message, :float)
    end
  end
end
