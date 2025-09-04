"""
Un programa que reciba la temperatura en grados Celsius y diga:
  "Frío" si es menor a 15.
  "Templado" si está entre 15 y 25.
  "Caluroso" si es mayor a 25.
"""
defmodule Cond_2 do
  def temperature_check do
    temperature = Util.input("Enter the temperature in Celsius:", :float)
    cond do
      temperature < 15 -> Util.show_message("Cold")
      temperature >= 15 && temperature <= 25 -> Util.show_message("Mild")
      temperature > 25 -> Util.show_message("Hot")
    end
  end
end
Cond_2.temperature_check()
