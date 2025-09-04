"""
2. Control de Inventario de una Librería
Descripción:
Una librería quiere un sistema de control de inventario que permita registrar los libros disponibles. El
programa debe:
1. Pedir el título del libro (texto).
2. Solicitar la cantidad de unidades disponibles (entero).
3. Ingresar el precio unitario (real).
4. Calcular el valor total del inventario de ese libro.
5. Mostrar los resultados en un formato legible.

Ejemplo de entrada y salida:
Ingrese el título del libro: Introducción a Elixir
Ingrese la cantidad de unidades disponibles: 10
Ingrese el precio unitario: 120000
El libro "Introducción a Elixir" tiene 10 unidades, con un valor total de $1,200,000.
"""

defmodule Ejercicio2 do
  def ejercicio2 do
    title = Util.input("Type the name of a book: ", :string)
    books_amount = Util.input("Type the amount of books: ", :integer)
    unitary_price = Util.input("Type the price of the book", :float)
    total = books_amount * unitary_price
    message = "The book '#{title}'\nHas a total of  #{books_amount} unities\nWith a price of $#{Float.round(unitary_price, 2)} each.\nThe total bill is $#{Float.round(total, 2)}."
    Util.show_message(message)
  end
end

Ejercicio2.ejercicio2()
