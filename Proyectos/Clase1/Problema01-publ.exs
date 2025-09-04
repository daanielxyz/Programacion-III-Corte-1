# Problema No1 publico
# Carlos, el gerente de la empresa de software onceLtda, requiere un programa que permita mostrar un mensaje de bienvenida
# a los trabajadores de la empresa.

defmodule Saludo do
  def mostrar_mensaje_bienvenida(mensaje), do: mensaje |> IO.puts()
end

Saludo.mostrar_mensaje_bienvenida("Bienvenidos a la empresa Once Ltda")
