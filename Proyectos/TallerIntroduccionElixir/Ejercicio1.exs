"""
1. Cálculo de Consumo de Combustible
Un conductor necesita calcular el consumo de combustible de su vehículo. El programa debe:

● Pedir el nombre del conductor (texto).
● Ingresar la distancia recorrida en kilómetros (real).
● Ingresar la cantidad de combustible consumido en litros (real).
● Calcular el rendimiento del vehículo en km/L.
● Mostrar los resultados con 2 decimales de precisión.
Fórmula:
● Rendimiento = distancia / litros
"""

defmodule Ejercicio1 do
  def ejericio1 do
    name = Util.input("Type your name:", :string)
    kilometers = Util.input("Type the amount of kilometers traveled", :float)
    liters = Util.input("Typed the amount of liters consumed", :float)
    performance = kilometers / liters
    message = "Hi #{name}, your performance is #{Float.round(performance, 2)} km/l."
    Util.show_message(message)
  end
end

Ejercicio1.ejericio1()
