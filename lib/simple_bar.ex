defmodule SimpleBar do

  def print_to_so(action, number_done, total, percent_done) do
    IO.write("\r#{percent_done(number_done,total)}")
    action
  end

  @spec percent_done(integer(),integer()) :: float
  def percent_done(number_done,total) do
    number_done/total
  end
end
