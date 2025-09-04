defmodule Util do
  def show_message(message) do
    System.cmd("java", ["-cp", ".", "Mensaje", message])
  end

  def input(message, :string) do
    System.cmd("java", ["-cp", ".", "Mensaje", "input", message, :string])
    |> elem(0)
    |> String.trim()
  end

  def input(message, :integer) do
    message
    |> input(:string)
    |> String.to_integer()
  end

  def input(message, :float) do
    message
    |> input(:string)
    |> String.to_float()
  end

end
