"""
Un programa que reciba un número e indique si es positivo.
"""
defmodule If_2 do
  def positive_number do
    number = Util.input("Enter a number:", :integer)
    if number > 0 do
      Util.show_message("The number is positive")
    else
      Util.show_message("The number is negative")
    end
  end
end
If_2.positive_number()

