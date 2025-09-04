#Ejercicio para pedir un nombre y mostrarlo desde un comando del util

defmodule SaludarNombre do
  @docmodule """
  ## asdasd
  """

  def pedirNombre() do
    
    @doc"""
    asdadasd
    """

    nombre_usuario = Util.pedir_info
    Util.mostrar_mensaje("Bienvenido: " <> nombre_usuario)
  end
end


SaludarNombre.pedirNombre()
