"""
1. Crear una keyword list que represente un producto con claves :nombre, :precio,
:stock.
2. Obtener el valor de :precio en la keyword list [nombre: &quot;Camisa&quot;, precio: 40000, stock:
12].
3. Agregar una nueva clave :color con valor &quot;Azul&quot; a la lista anterior.
4. Dada la keyword list [modo: :rapido, modo: :seguro, tiempo: 15], obtener todos los
valores de :modo.
5. Iterar sobre la keyword list [usuario: &quot;Carlos&quot;, activo: true, rol: &quot;admin&quot;] e imprimir cada
clave y valor.
"""

defmodule Main do
  def ej1 do
    kwlist = [nombre: "Laptop", precio: 2500, stock: 5]
    Util.show_message(kwlist)
  end

  def ej2 do
    kwlist = [nombre: "Camisa", precio: 400, stock: 12]
    Util.show_message(Keyword.get(kwlist, :precio))
  end

  def ej3 do
    kwlist = [nombre: "Camisa", precio: 400, stock: 12]
    new_kwlist = Keyword.put(kwlist, :color, "Azul")
    Util.show_message(new_kwlist)
  end

  def ej4 do
    kwlist = [modo: :rapido, modo: :seguro, tiempo: 15]
    Util.show_message(Keyword.get_values(kwlist, :modo))
  end

  def ej5 do
    kwlist = [usuario: "Carlos", activo: true, rol: "admin"]
    Enum.each(kwlist, fn {key, value} -> Util.show_message("#{key}: #{value}:") end)
  end
end
