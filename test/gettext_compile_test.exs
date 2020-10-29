defmodule GettextCompileTest do
  use ExUnit.Case
  doctest GettextCompile

  test "greets the world" do
    assert GettextCompile.hello() == :world
  end
end
