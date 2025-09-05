"""
list = ["Jhan", 24, :ok]

Agregar elementos al inicio:
    [:ingeniero | list]
    list = [:ingeniero, "Jhan", 24, :ok ]

Agregar elementos al final:
    list2 = list ++ [2024]
    list2 = [:ingeniero, "Jhan", 24, :ok, 2024]


Head/Tail
    [head | tail] = list2

      head = :ingeniero
      tail = ["Jhan", 24, :ok, 2024]

    [head | [head2 | tail2]] = list2
      head = :ingeniero
      head2 = "Jhan"
      tail = ["Jhan", 24, :ok, 2024]
      tail2 = [24, :ok, 2024]

Nombrar con letras
  [a, b, c]  = list
    a = "Jhan"
    b = 24
    c = :ok

Restar listas
  list2 -- list
    [:ingeniero, 2024]

Enum
  Enum.at(list2, 3)
    :ok
  Enum.at(list2, 5, nil)
    nil
  """




"""
TUPLAS:

tupla = {:ok, "Mensaje", 200}

Obtener elemento de una tupla:
  elem(tupla, 2)
    200

Modificar elemento de una tupla:
  tupla = put_elem(tupla, 0, :error)


"""



"""
Keywords:

list_kW = [name: "Jhan", edad: 24]
  Keyword.get(list_kW, :name)
  "Jhan"

list_kW = [name: "Jhan", edad: 24, name: "Santiago"]
  Keyword.get_values(list_kW, :name)
  ["Jhan", "Santiago"]

  Keyword.put(list_kW, :name, "Carlos")
    [name: "Carlos", edad: 24]

  Keyword.delete(list_kW, :name)
    [edad: 24]

"""




"""
MAPAS:

map1 = %{"nombre" => "Jhan"}
  %{"nombre" => "Jhan"}
map2 = %{nombre : "Jhan"}
  %{nombre: "Jhan"}

map3 = Map.put(map1, :nombre, "Carlos")

Map.get(map3, "nombre")
  "Jhan"

Map.delete(map3, :nombre)






"""
