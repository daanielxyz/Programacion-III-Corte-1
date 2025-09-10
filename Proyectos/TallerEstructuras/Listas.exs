"""
Listas
1. Crear una lista con los nombres de cinco ciudades y mostrar la primera (cabeza) y el
resto (cola).
2. Concatenar dos listas de números [1, 2, 3] y [4, 5, 6], y luego mostrar el resultado.
3. Dada una lista [10, 20, 30, 40, 50], restar [20, 50] y mostrar el resultado.
4. Escribir una función que reciba una lista de números y devuelva una nueva lista con
todos los valores multiplicados por 3.
5. Desestructurar la lista [100, 200, 300] en variables a, b, c y mostrar cada una.
"""

defmodule Main do
  def ej1 do
    list = ["Armenia", "Bogota", "Cali", "Manizales", "Barranquilla"]
    list = [head | tail]
    Util.show_message("Tail: #{tail} Head: #{head}")
  end

  def ej2 do
    list1 = [1, 2, 3]
    list2 = [9, 8, 7]
    Util.show_message(list1 ++ list2)
  end

  def ej3 do
    list1 = [10, 20, 30, 40, 50]
    list2 = [20, 50]
    Util.show_message(list1 -- list2)
  end

  def ej4(list) do
    Enum.map(list, fn x -> x * 3 end)
  end


  def ej5 do
    [a, b, c] = [100, 200, 300]
    Util.show_message("a: #{a}, b: #{b}, c: #{c}")
  end

end
