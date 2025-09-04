"""
En un videojuego, un jugador gana puntos dependiendo de la dificultad del enemigo derrotado:
  Nivel menor a 3 → +10 puntos.
  Nivel entre 3 y 6 → +20 puntos.
  Nivel mayor a 6 → +50 puntos.
"""
defmodule Cond_3 do
  def videogame_points do
    level = Util.input("Enter the level of the enemy you beat: ", :string)
    cond do
      level < 3 -> Util.show_message("You get +10 points!")
      level >= 3 && level < 6 -> Util.show_message("You get +20 points!")
      level > 6 -> Util.show_message("You get +50 points!")
    end
  end
end

Cond_3.videogame_points()
