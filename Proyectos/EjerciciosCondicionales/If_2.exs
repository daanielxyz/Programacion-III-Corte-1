"""
Un programa que reciba un número e indique si es positivo.
"""
defmodule Ejercicio2 do
  def ejercicio2 do
    number = Util.input("Enter a number:", :integer)
    if number > 0 do
      Util.show_message("The number is positive")
    else
      Util.show_message("The number is negative")
    end
  end
end
Ejercicio2.ejercicio2()
