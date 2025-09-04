"""
Un programa que reciba una contraseña y muestre un mensaje de error a menos que la contraseña sea "1234".
"""
defmodule Ejercicio4 do
  def ejercicio4 do
    password = Util.input("Enter your password:", :string)
    unless password == "1234" do
      Util.show_message("Invalid password")
    end
  end
end
Ejercicio4.ejercicio4()
