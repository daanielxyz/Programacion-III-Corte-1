"""
6. Cálculo del Costo de Envío de un Paquete
Descripción:
Una empresa de envíos necesita calcular el costo de enviar un paquete. Se solicita:
1. Ingresar el nombre del cliente (texto).
2. Ingresar el peso del paquete en kg (real).
3. Ingresar el tipo de envío (Económico, Express, Internacional).
4. Aplicar la siguiente tarifa:
    ○ Económico: $5,000 por kg.
    ○ Express: $8,000 por kg.
    ○ Internacional:
        ■ Si el peso es ≤5 kg, se cobra $15,000 por kg.
        ■ Si el peso es >5 kg, se cobra $12,000 por kg.
5. Usar if, cond y case con pattern matching en la solución.
6. Retornar una tupla con {cliente, peso, tipo_envio, costo_total}.
"""

defmodule Ejercicio6 do
  def ejercicio6 do
    client_name = Util.input("Enter the client's name:", :string)
    package_weight = Util.input("Enter the package weight in kg:", :float)
    shipping_type = String.upcase(Util.input("Enter the shipping type (Economy, Express, International):", :string))
    total = calculate_cost(shipping_type, package_weight)
    message = "Client: #{client_name}\nShipping type: #{shipping_type
}\nPackage weight: #{package_weight} kg\nTotal shipping cost: $#{Util.format_currency(total)}."
    Util.show_message(message)
    {client_name, package_weight, shipping_type, total}
  end

  def calculate_cost(shipping_type, weight) do
    case shipping_type do
      "ECONOMY" -> 5000.0 * weight
      "EXPRESS" -> 8000.0* weight
      "INTERNATIONAL" -> if weight<= 5.0 do
          15000.0 * weight
        else
          12000.0 *weight
      end
      _ ->
        Util.show_message("Invalid shipping type")
        0.0
    end
  end

end

Ejercicio6.ejercicio6()
