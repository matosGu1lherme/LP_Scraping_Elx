defmodule ScrapTest do
  use ExUnit.Case
  doctest Scrap

  test "greets the world" do
    assert Scrap.hello() == :world
  end
end
