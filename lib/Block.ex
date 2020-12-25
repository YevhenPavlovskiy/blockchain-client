defmodule Block do
  defstruct [:data, :timestamp, :prev_hash, :hash, :nonce]
end