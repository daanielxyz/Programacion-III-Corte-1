defmodule Main do
  def main do
    positive_negative_number(1)
    |> Util.show_message()

    positive_negative_number(-1)
    |> Util.show_message()

    positive_negative_number(0)
    |> Util.show_message()
  end

  def positive_negative_number(n) when n>0, do: "Positive"
  def positive_negative_number(n) when n<0, do: "Negative"
  def positive_negative_number(0), do: "Cero"
end

Main.main()
