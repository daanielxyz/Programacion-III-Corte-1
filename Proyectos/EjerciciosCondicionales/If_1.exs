"""
Un programa que reciba la edad de una persona y muestre si es mayor de edad (18 años o más) o no.
"""
defmodule Ejercicio1 do
  def ejercicio1 do
    age = Util.input("Enter your age:", :integer)
    if age >= 18 do
      Util.show_message("You are an adult")
    else
      Util.show_message("You are not an adult")
    end
  end
end
Ejercicio1.ejercicio1()
