defmodule BrainfuckTest do
  use ExUnit.Case
  doctest Brainfuck

  test "run empty code" do
    assert Brainfuck.run("") == {0, [0], ""}
  end
end
