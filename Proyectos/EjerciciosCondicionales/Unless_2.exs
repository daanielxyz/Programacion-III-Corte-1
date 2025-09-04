"""
Un programa que reciba un número y muestre "El número no es cero" a menos que sea exactamente 0.
"""
defmodule Ejercicio5 do
  def ejercicio5 do
    number = Util.input("Enter a number:", :integer)
    unless number == 0 do
      Util.show_message("The number is not zero")
    end
  end
end
Ejercicio5.ejercicio5()
