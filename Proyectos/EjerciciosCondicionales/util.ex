defmodule Util do
  def show_message(message) do
    System.cmd("java", ["-cp", ".", "EjerciciosCondicionales.Mensaje", message])
  end

  # Clausulas: Mismos argumentos
  def input(message, :string) do
    System.cmd("java", ["-cp", ".", "EjerciciosCondicionales.Mensaje", "input", message])
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

  def input(message, :boolean) do
    try do
      message
      |> input(:string)
      |> String.downcase()
      |> case do
        "true" -> true
        "false" -> false
        "1" -> true
        "0" -> false
        "y" -> true
        "n" -> false
        "yes" -> true
        "no" -> false
        "si" -> true
        "no" -> false
        _ -> raise ArgumentError
      end
    rescue
      ArgumentError ->
        show_message("Error: Typed value is not a valid boolean (true/false or 1/0)")
        input(message, :boolean)
    end
  end

  def format_currency(amount) do
    :erlang.float_to_binary(amount, decimals: 2)
  end
end
