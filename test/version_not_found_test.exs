defmodule VersionNotFoundTest do
  use ExUnit.Case
  doctest VersionNotFound

  test "greets the world" do
    assert VersionNotFound.hello() == :world
  end
end
