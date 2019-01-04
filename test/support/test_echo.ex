defmodule TestEcho do
  def echo(msg) do
    send(self(), msg)
    :ok
  end
end

defmodule TestEchoWrapper do
  use Walkman.Wrapper, TestEcho
end
