defmodule PigeonTest do
  use ExUnit.Case
  alias Pigeon.GCM
  doctest Pigeon

  @token System.get_env("GCM_TEST_TOKEN")
  @data  %{foo: "bar"}

  test "data push" do
    GCM.Notification.new(@data, @token)
    |> GCM.push
  end

  test "single device token push" do
    notification = %{type: "info", message: "Hello"}
    GCM.Notification.new(%{notification: notification, data: @data}, @token)
    |> GCM.push
  end
end
