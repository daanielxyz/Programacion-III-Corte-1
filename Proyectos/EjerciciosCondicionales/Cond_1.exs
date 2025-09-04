"""
Un programa que reciba una nota (0 a 5) y muestre:
  "Excelente" si es mayor o igual a 4.5.
  "Aprobado" si está entre 3.0 y 4.4.
  "Reprobado" si es menor a 3.0.
"""
defmodule Cond_1 do
  def grade_check do
    grade = Util.input("Enter your grade:", :float)
    cond do
      grade >= 4.5 -> Util.show_message("Excelente")
      grade >= 3.0 -> Util.show_message("Aprobado")
      grade < 3.0 -> Util.show_message("Reprobado")
      true -> Util.show_message("Invalid grade, must be between 0 and 5")
    end
  end
end
Cond_1.grade_check()
