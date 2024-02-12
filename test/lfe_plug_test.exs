defmodule LfePlugTest do
  use ExUnit.Case
  doctest LfePlug

  test "greets the world" do
    assert LfePlug.hello() == :world
  end
end
