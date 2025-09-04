"""
4. Cálculo del Salario de un Empleado
Una empresa necesita calcular el salario total de un empleado. El programa debe:

  1. Pedir el nombre del empleado (texto).
  2. Ingresar el salario base (real).
  3. Ingresar el número de horas extras trabajadas (entero).
  4. Cada hora extra se paga al 1.5x del valor de una hora normal.
  5. Mostrar el salario total del empleado.

    Ejemplo de entrada y salida:
    Ingrese el nombre del empleado: María Gómez
    Ingrese el salario base: 1500000
    Ingrese las horas extras trabajadas: 5
    El salario total de María Gómez es de $1,218,750.
"""
defmodule Ejercicio4 do
  def ejercicio4 do
    name = Util.input("Enter your name:", :string)
    base_salary = Util.input("Enter your base salary:", :float)
    extra_hours = Util.input("Enter the number of extra hours worked in the month:", :float)
    hourly_rate = (base_salary / 160) # Assuming a 160 hour work month
    salary_extra_hours = hourly_rate * 1.5 * extra_hours
    total_salary = base_salary + salary_extra_hours
    message = "Hello #{name}\n(Base salary: $#{
      Util.format_currency(base_salary)}\nExtra hours: $#{
      Util.format_currency(salary_extra_hours)}\nYour total salary is $#{
      Float.round(salary_extra_hours, 2)})\nYour total salary is $#{Float.round(total_salary, 2)}"
    Util.show_message(message)
  end
end

Ejercicio4.ejercicio4()
