defmodule Main do
  def main do
    req_text()
    req_number()
    req_decimal()
  end

  def req_text() do
    "Type your name: "
    |> Util.input(:string)
    |> Util.show_message()
  end

  def req_number() do
    x = Util.input("Type an integer: ", :integer)

    # Interpolación
    "The number is: #{is_integer(x)}"
    |> Util.show_message()
  end

  def req_decimal() do
    x = Util.input("Type a decimal: ", :float)

    # Interpolación
    "The number is: #{is_float(x)}"
    |> Util.show_message()
  end
end

Main.main()
