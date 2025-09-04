defmodule util do

  
  def input(message, :integer) do
    try do
      message
      |> input(:string)
      |> String.to_integer()
    rescue
      ArgumentError ->
          show_message("Error: The number is not an integer")
        message
        |> input(:integer, :try)
      end
  end


  @doc """
    Displays a message using a Java dialog.
  """
  def show_message(message) do
    System.cmd("java", ["-cp", ".", "Mensaje", message])
  end
end
