defmodule SimpleBarTest do
  use ExUnit.Case
  doctest SimpleBar

  test "correctly provides percentage done" do
    assert SimpleBar.percent_done(10,100) == 10
  end

  test "correctly provides percentage done for 7" do
    assert SimpleBar.percent_done(7,100) == 7
  end

  test "correctly provides percentage done for 0" do
    assert SimpleBar.percent_done(0,100) == 0
  end

end
