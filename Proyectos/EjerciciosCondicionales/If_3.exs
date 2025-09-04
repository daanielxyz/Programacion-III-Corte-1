"""
En un sistema bancario, cuando un cliente realiza un retiro, el programa debe verificar si el saldo en su cuenta es suficiente:
  Si el saldo es mayor o igual al monto solicitado, el retiro se aprueba y se muestra el nuevo saldo.
  Si no, debe mostrarse “Fondos insuficientes”.
"""
defmodule If_3 do
  def enough_balance do
    balance = Util.input("Enter your balance:", :float)
    withdrawal = Util.input("Enter the withdrawal amount:", :float)
    if balance >= withdrawal do
      Util.show_message("Withdrawal approved")
    else
      Util.show_message("Insufficient funds")
    end
  end
end

If_3.enough_balance()
