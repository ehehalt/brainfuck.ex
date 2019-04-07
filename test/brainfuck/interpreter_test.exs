defmodule Brainfuck.InterpreterTest do
  use ExUnit.Case
  doctest Brainfuck.Interpreter

  test "run empty code" do
    assert Brainfuck.Interpreter.run("") == {0, [0], ""}
  end

  test "run adder code" do
    assert Brainfuck.Interpreter.run("+") == {0, [1], ""}
    assert Brainfuck.Interpreter.run(String.duplicate("+", 256)) == {0, [0], ""}
  end

  test "run substracter code" do
    assert Brainfuck.Interpreter.run("-") == {0, [255], ""}
  end

  test "run move decrease address code" do
    assert Brainfuck.Interpreter.run("<") == {0, [0,0], ""}
  end

  test "run move increase address code" do
    assert Brainfuck.Interpreter.run(">") == {1, [0,0], ""}
  end

end
