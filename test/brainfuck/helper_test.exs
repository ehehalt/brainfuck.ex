defmodule Brainfuck.HelperTest do
  use ExUnit.Case
  doctest Brainfuck.Helper

  test "test inc" do
    assert Brainfuck.Helper.inc(0) == 1
    assert Brainfuck.Helper.inc(255) == 0
    assert Brainfuck.Helper.inc(512) == 1
  end

  test "test dec" do
    assert Brainfuck.Helper.dec(0) == 255
    assert Brainfuck.Helper.dec(255) == 254
    assert Brainfuck.Helper.dec(512) == 255
  end

  test "test inc_at" do
    assert Brainfuck.Helper.inc_at([0], 0) == [1]
    assert Brainfuck.Helper.inc_at([255], 0) == [0]
    assert Brainfuck.Helper.inc_at([512], 0) == [1]
  end

  test "test dec_at" do
    assert Brainfuck.Helper.dec_at([0], 0) == [255]
    assert Brainfuck.Helper.dec_at([255], 0) == [254]
    assert Brainfuck.Helper.dec_at([512], 0) == [255]
  end
end
