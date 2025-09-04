"""
5. Registro de Vehículos en un Peaje
Un sistema de peajes debe registrar información de los vehículos que pasan. Se solicita:
1. Ingresar la placa del vehículo (texto).
2. Ingresar el tipo de vehículo (Carro, Moto, Camión) (texto).
3. Ingresar el peso del vehículo en toneladas (real).
4. Asignar una tarifa según el tipo de vehículo:
    ○ Carro: $10,000
    ○ Moto: $5,000
    ○ Camión: $20,000 + $2,000 por tonelada adicional.
5. Retornar una tupla con {placa, tipo, tarifa final}.
    Ejemplo de Entrada y Salida
    Ingrese la placa del vehículo: ABC123
    Ingrese el tipo de vehículo: Camión
    Ingrese el peso del vehículo (toneladas): 5.0
    Vehículo ABC123 (Camión) debe pagar $30,000.
"""
defmodule Ejercicio5 do
  def ejercicio5 do
    license_plate = Util.input("Enter the vehicle's license plate (format ABC123):", :string)
    vehicle_type = String.upcase(Util.input("Enter the vehicle type (Car, Motorcycle, Truck):", :string))
    weight = Util.input("Enter the vehicle weight in tons:", :float)
    final_rate = calculate_rate(vehicle_type, weight)
    {license_plate, vehicle_type, final_rate}
    message = "The vehicle's license plate is #{license_plate}\nThe vehicle type is #{vehicle_type}\nThe weight in tons is #{weight}\nThe rate to pay is $#{Util.format_currency(final_rate)}."
    Util.show_message(message)
  end


  def calculate_rate(vehicle_type, weight) do
    case vehicle_type do
      "CAR" -> 10000.0
      "MOTORCYCLE" -> 5000.0
      "TRUCK" -> 20000.0 + 2000.0 * weight
      _ ->
        Util.show_message("Invalid vehicle type")
    end
  end
end

Ejercicio5.ejercicio5()
