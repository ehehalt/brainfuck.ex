defmodule Brainfuck.Helper do

  def inc_at(list, addr) when addr >= 0 do
    List.update_at(list, addr, &(Brainfuck.Helper.inc/1))
  end

  def dec_at(list, addr) when addr >= 0 do
    List.update_at(list, addr, &(Brainfuck.Helper.dec/1))
  end

  def inc(value), do: rem(value + 1, 256)

  def dec(value), do: rem(256 + (value - 1), 256)

end
