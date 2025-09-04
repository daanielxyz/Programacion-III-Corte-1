defmodule Util do #Module Util
  def mostrar_mensaje(mensaje) do
    System.cmd("java", ["-cp", ".", "Mensaje", mensaje])
  end

  def pedir_info(info) do
    System.cmd("java", ["-cp", ".", "Mensaje", "input", info])
    |> elem(0)
    |> String.trim()
  end

end
