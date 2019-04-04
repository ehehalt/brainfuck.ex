defmodule Brainfuck do
  @moduledoc """
  Documentation for Brainfuck.
  """

  @doc """
  Brainfuck.run("++..")

  ## Examples

      iex> Brainfuck.run("")
      {0, [0], ""}

  """
  def run(program) do
    Brainfuck.Interpreter.run(program)
  end
end
