defmodule BlockchainClientTest do
  use ExUnit.Case
  doctest BlockchainClient

  test "greets the world" do
    assert BlockchainClient.hello() == :world
  end
end
