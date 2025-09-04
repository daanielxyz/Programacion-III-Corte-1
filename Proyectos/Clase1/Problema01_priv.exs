# Problema No1 privado
# Carlos, el gerente de la empresa de software onceLtda, requiere un programa que permita mostrar un mensaje de bienvenida
# a los trabajadores de la empresa.

defmodule Saludo do
  defp mensaje_bienvenida(mensaje), do: IO.puts(mensaje)
  def mostrar_mensaje_bienvenida(mensaje), do: mensaje_bienvenida(mensaje)
end

Saludo.mostrar_mensaje_bienvenida("Bienvenidos a la empresa Once Ltda")
