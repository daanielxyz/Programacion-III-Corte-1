"""
Un programa que reciba la edad de una persona y muestre si es mayor de edad (18 años o más) o no.
"""
defmodule If_1 do
  def age_check do
    age = Util.input("Enter your age:", :integer)
    if age >= 18 do
      Util.show_message("You are an adult")
    else
      Util.show_message("You are not an adult")
    end
  end
end
If_1.age_check()

