defmodule SimpleBarTest do
  use ExUnit.Case
  doctest SimpleBar

  test "correctly provides percentage done" do
    assert SimpleBar.percent_done(10,100) == 0.10
  end
end
