defmodule Mix.Tasks.CodecovTest do
  use ExUnit.Case
  doctest Mix.Tasks.Codecov

  test "greets the world" do
    assert Mix.Tasks.Codecov.hello() == :world
  end
end
