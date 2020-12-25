defmodule BlockchainClient do
  @moduledoc """
  Documentation for `BlockchainClient`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> BlockchainClient.hello()
      :world

  """
  def sendRequest(blockchain, message,command) do
    IO.puts "http://127.0.0.1:61597/#{command}"
    data = Poison.encode!(%{"blockchain" => blockchain, "message" => message})
    response = HTTPotion.post "http://127.0.0.1:61597/#{command}", [body: data, headers: [], timeout: 20_000]
    IO.puts response.body
    {result, _} = response.body
    result
  end

  def hello do
    :world
  end
end
