"""
3. Conversión de Unidades de Temperatura
Se requiere un programa que convierta temperaturas entre Celsius, Fahrenheit y Kelvin.
1. Pedir el nombre del usuario (texto).
2. Solicitar la temperatura en Celsius (real).
3. Convertir la temperatura a Fahrenheit y Kelvin.
4. Mostrar los resultados con 1 decimal de precisión.
  Fórmulas:
  ● °F = (°C * 9/5) + 32
  ● K = °C + 273.15
Ejemplo de entrada y salida:
  Ingrese su nombre: Carlos Ruiz
  Ingrese la temperatura en °C: 25
  Carlos Ruiz, la temperatura es:
  - 77.0 °F
  - 298.2 K
"""

defmodule Ejercicio3 do
  def ejercicio3 do
    name = Util.input("Type your name:", :string)
    temperature_c = Util.input("Type the temperature in Celsius:", :float)
    temperature_f = (temperature_c * 9 / 5) + 32
    temperature_k = temperature_c + 273.15
    message = "Hi #{name}, the temperature #{Util.format_currency(temperature_c)} °C is equivalent to:\n#{Util.format_currency(temperature_f)} °F\n#{Util.format_currency(temperature_k)} K."
    Util.show_message(message)
  end
end

Ejercicio3.ejercicio3()
