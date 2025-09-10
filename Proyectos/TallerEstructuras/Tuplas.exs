"""
1. Crear una tupla con tres elementos: un número, una cadena y un átomo. Luego
mostrar el segundo elemento usando elem/2.
2. Dada la tupla {:ok, "Exitoso", 200}, modificar el valor 200 por 404 usando put_elem/3.
3. Crear una función que reciba dos números y devuelva una tupla {:ok, resultado} si el
divisor es distinto de cero, o {:error, &quot;División por cero&quot;} en caso contrario.
4. Usar pattern matching para extraer los valores de la tupla {:usuario, "Ana", 25} y
mostrar nombre y edad.
5. Convertir la tupla {:a, :b, :c} en lista y recorrerla imprimiendo cada elemento.
"""

defmodule Main do
  def ej1 do
    tuple = {42, "Hi", :ok}
    Util.show_message(elem(tuple, 1))
  end

  def ej2 do
    tuple = {:ok, "Exitoso", 200}
    new_tuple = put_elem(tuple, 2, 404)
    Util.show_message(new_tuple)
  end

  def ej3(n1, n2) do
    if n2 != 0 do
      {:ok, n1 / n2}
    else
      {:error, "División por cero"}
    end
  end

  def ej4 do
    {:usuario, nombre, edad} = {:usuario, "Ana", 25}
    Util.show_message("Nombre: #{nombre}, Edad: #{edad}")
  end

  def ej5 do
    tuple = {:a, :b, :c}
    newlist = Enum.into(tuple, [])
    Enum.each(newlist, fn x -> Util.show_message(x) end)
  end
end

Main.ej5()
