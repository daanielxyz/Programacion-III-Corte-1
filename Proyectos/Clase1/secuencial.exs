defmodule Secuencia do #Modulo -> UpperCamelCase
  def mostrar_mensaje_una_linea(), do: IO.puts("Hola a todos") #Funcion
end

defmodule Secuencia do #Modulo -> UpperCamelCase
  def mostrar_mensaje do
    "Mostrar mensaje"
    |> IO.puts()
  end
end


#Funcion privada -> snake_case
defp mostrar_mensaje_privado(mensaje) do
  mensaje
  |> IO.puts()
end


Secuencia.mostrar_mensaje_privado("Mensaje privado")
Secuencia.mostrar_mensaje()
Secuencia.mostrar_mensaje_una_linea()
