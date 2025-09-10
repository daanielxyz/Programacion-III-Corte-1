"""
1. Crear un mapa con claves :nombre, :edad, :ciudad y mostrar el valor de :ciudad.
2. Usar Map.put/3 para agregar la clave :profesion con valor &quot;Ingeniero&quot; a un mapa de
persona.
3. Actualizar el valor de :edad en %{nombre: &quot;Ana&quot;, edad: 25} para que ahora sea 26.
4. Eliminar la clave :ciudad de %{nombre: &quot;Luis&quot;, edad: 30, ciudad: &quot;Cali&quot;}.
5. Recorrer el mapa %{a: 1, b: 2, c: 3} e imprimir las claves y valores.
"""

def main do
  def ej1 do
    map = %{nombre: "Juan", edad: 28, ciudad: "Medellin"}
    Util.show_message(Map.get(map, :ciudad))
  end

  def ej2 do
    persona = %{nombre: "Maria", edad: 32}
    persona = Map.put(persona, :profesion, "Ingenerio")
  end

  def ej3 do
    map = %{nombre: "Ana", edad: 25}
    map2 = Map.put(map, :edad, 26)
  end

  def ej4 do
    map = %{nombre: "Luis", edad: 30, ciudad: "Cali"}
    map2 = Map.delete(map, :ciudad)
  end

  def ej5 do
    map = %{a: 1, b: 2, c: 3}
    Enum.each(map, fn {key, value} -> Util.show_message("#{key}: #{value}:") end)
  end
end
