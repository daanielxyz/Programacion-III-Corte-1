defmodule Main do
  def main do

  end


  def postivenumber(n) do
    if n > 0 do
      Util.show_message("Positive")
    else
      Util.show_message("Negative")
    end
  end

  def unless_condition(n) do
    unless (n === 0) do
      Util.show_message("Its not 0")
    else
      Util.show_message("Es exactamente 0")
    end
  end

  def condicion_cond(grade) do
    cond do
      grade >= 4.5 -> Util.show_message("Excelent")
      grade >= 3.0 -> Util.show_message("Passed")
      grade < 3.0 -> Util.show_message("Reproved")
      true -> Util.show_message("Invalid grade")
    end
  end
end
