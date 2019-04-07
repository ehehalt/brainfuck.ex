defmodule Brainfuck.Interpreter do

  import Brainfuck.Helper

  # start
  def run(program), do: run(program, 0, [0], "")

  # end
  defp run("", address, memory, output), do: {address, memory, output}

  # + - increase memory at address
  defp run("+" <> part, address, memory, output) do
    run(part, address, inc_at(memory, address), output)
  end

  # - - decrease memory at address
  defp run("-" <> part, address, memory, output) do
    run(part, address, dec_at(memory, address), output)
  end

  # < - decrease address
  defp run("<" <> part, address, memory, output) when address == 0 do
    run(part, address, [0] ++ memory, output)
  end

  defp run("<" <> part, address, memory, output) do
    run(part, address-1, memory, output)
  end

  # > - increase address
  defp run(">" <> part, address, memory, output) when address >= (length(memory)-1) do
    run(part, address+1, memory ++ [0], output)
  end

  defp run(">" <> part, address, memory, output) do
    run(part, address+1, memory, output)
  end

  # _ - skip non opcode characters
  defp run(<<_>> <> part, address, memory, output) do
    run(part, address, memory, output)
  end

end
