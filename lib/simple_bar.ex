defmodule SimpleBar do


  @doc """
  Entry method for simple bar. Pass the total size of the items to process. The module always returns the object you pass it in order to make it pipe-able.

  ## Example
  iex> SimpleBar.start(:ok,100)
  :ok

  """
  @spec start(any,integer) :: any
  def start(item_to_return, total) do
    percent_done(0,total)
      |> bar
      |> IO.write
    item_to_return
  end


  @doc """
  Increments the bar by a given amount and returns the item it is given.

  ## Example
  iex> SimpleBar.step(:ok, 10,100)
  :ok
  """
  @spec step(any, integer,integer) :: any
  def step(item_to_return,number_done,total) do
    percent_done(number_done,total)
      |> bar
      |> IO.write
    item_to_return
  end

  @doc """
  Returns the percentage of completed items

  ## Example
  iex> SimpleBar.percent_done(1,10)
  10.0
  """
  @spec percent_done(integer(),integer()) :: float
  def percent_done(number_done,total) do
    (number_done/total) * 100
      |> Float.floor
  end

  @doc """
  This produces the string with a bar of the correct length to be consumed later.

  iex> SimpleBar.bar(10)
  '\r10% Done [===========]'
  """
  @spec bar(float) :: char_list
  def bar(remaining_per) do
    str = "="
    percentage = remaining_per
    _bar(remaining_per, str,percentage)
  end

  defp _bar(0.0,str,percentage) do
    '\r#{percentage}% Done [#{str}]'
  end

  defp _bar(remaining_per,str,percentage) do
    int_str = "#{str}="
    _bar(remaining_per-1.0, int_str,percentage)
  end


end
