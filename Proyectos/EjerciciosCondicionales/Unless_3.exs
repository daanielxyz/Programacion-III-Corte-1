"""
En una aplicación de pedidos a domicilio, un repartidor solo puede iniciar una nueva entrega a menos que ya tenga una en curso:
  Si no tiene pedidos activos, el sistema le asigna el nuevo pedido.
  Si ya tiene uno, debe mostrar “No puede tomar un nuevo pedido hasta entregar el actual”.
"""
defmodule Ejercicio6 do
  def ejercicio6 do
    if has_active_order do
      Util.show_message("You cannot take a new order until you deliver the current one")
    else
      Util.show_message("You can take a new order")
    end
  end
end
Ejercicio6.ejercicio6()

