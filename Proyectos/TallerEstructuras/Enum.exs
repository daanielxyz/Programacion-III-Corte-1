"""
1. Usar Enum.each/2 para imprimir cada número de la lista [1, 2, 3, 4, 5].
2. Aplicar Enum.map/2 sobre [1, 2, 3, 4] para obtener una nueva lista con sus
cuadrados.
3. Usar Enum.filter/2 para obtener solo los números pares de [5, 6, 7, 8, 9, 10].
4. Calcular la suma de los elementos en [10, 20, 30] usando Enum.reduce/2.
5. Usar Enum.group_by/2 para agrupar una lista de personas por edad: [%{nombre:
&quot;Ana&quot;, edad: 20}, %{nombre: &quot;Juan&quot;, edad: 25}, %{nombre: &quot;Luis&quot;, edad: 20}].
"""

defmodule Main do
  def ej1 do
    list = [1, 2, 3, 4, 5]
    Enum.each(list, fn x -> Util.show_message(x) end)
  end

  def ej2 do
    list = [1, 2, 3, 4, 5]
    Enum.map(list, fn x -> :math.pow(x, 2) end)
  end

  def ej3 do
    list = [5, 6, 7, 8, 9, 10]
    Enum.filter(list, fn x -> rem(x, 2) == 0 end)
  end

  def ej4 do
    list = [10, 20, 30]
    Enum.reduce(list, 0, fn x, acc -> x + acc end)
  end

  def ej5 do
    people = [%{nombre: "Ana", edad: 20}, %{nombre: "Juan", edad: 25}, %{nombre: "Luis", edad: 20}]
    Enum.group_by(people, fn person -> person.edad end)
  end

end
