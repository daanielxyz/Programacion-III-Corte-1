"""
Un programa que reciba un número y muestre "El número no es cero" a menos que sea exactamente 0.
"""
defmodule Unless_2 do
  def not_zero do
    number = Util.input("Enter a number:", :integer)
    unless number == 0 do
      Util.show_message("The number is not zero")
    end
  end
end
Unless_2.not_zero()
