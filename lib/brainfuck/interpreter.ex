defmodule Brainfuck.Interpreter do

  import Brainfuck.Helper

  # start
  def run(program), do: run(program, 0, [0], "")

  # end
  defp run("", address, memory, output), do: {address, memory, output}

  # + - increase memory at address
  defp run("+" <> part, address, memory, output), do: run(part, address, inc_at(memory, address), output)

  # _ - skip non opcode characters
  defp run(<<_>> <> part, address, memory, output), do: run(part, address, memory, output)

end
