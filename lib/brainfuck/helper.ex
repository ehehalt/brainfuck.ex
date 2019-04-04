defmodule Brainfuck.Helper do
  @moduledoc """
  Helper functions for increase and decrease elements in a list:

  - inc_at/2
  - dec_at/2

  Helper function for increase and decrease single elements:

  - inc/1
  - dec/1

  All functions calculate with modulo 256 overflow.
  """

  @doc """
  Increase an element of a list at the specific addr with modulo 256 overflow calculation.

  ## Examples

      iex> Brainfuck.Helper.inc_at([0, 0], 1)
      [0, 1]

      iex> Brainfuck.Helper.inc_at([0, 255], 1)
      [0, 0]

  """
  def inc_at(list, addr) when is_list(list) and is_integer(addr) and addr >= 0 and addr < length(list) do
    List.update_at(list, addr, &(Brainfuck.Helper.inc/1))
  end

  @doc """
  Decrease an element of a list at the specific addr with modulo 256 overflow calculation.

  ## Examples

      iex> Brainfuck.Helper.dec_at([0, 0], 1)
      [0, 255]

      iex> Brainfuck.Helper.dec_at([0, 2], 1)
      [0, 1]

  """
  def dec_at(list, addr) when is_list(list) and is_integer(addr) and addr >= 0 and addr < length(list) do
    List.update_at(list, addr, &(Brainfuck.Helper.dec/1))
  end

  @doc """
  Increase with modulo 256 overflow calculation.

  ## Examples

      iex> Brainfuck.Helper.inc(0)
      1

  """
  def inc(value), do: rem(value + 1, 256)

  @doc """
  Decrease with modulo 256 overflow calculation.

  ## Examples

      iex> Brainfuck.Helper.dec(0)
      255

  """
  def dec(value), do: rem(256 + (value - 1), 256)

end
