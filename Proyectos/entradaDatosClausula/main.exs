defmodule main do
  def main do
    tomardesicion()
  end

  def tomardesicion()
    x = UtilGuardas.input("Ingresa tu nombre: ", "x")
    y = UtilGuardas.input("Ingresa tu edad: ", "y")
    z = UtilGuardas.input("Ingresa tu estatura: ", "z")
    pedir_texto(x)
    pedir_numero(y)
    pedir_decimal(z)
  end
  
