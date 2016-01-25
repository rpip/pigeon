defmodule Pigeon.Mixfile do
  use Mix.Project

  def project do
    [app: :pigeon,
     name: "Pigeon",
     version: "0.2.0",
     elixir: "~> 1.0",
     source_url: "https://github.com/codedge-llc/pigeon",
     description: description,
     package: package,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger, :httpoison],
    mod: {Pigeon, []}]
  end

  defp deps do
    [{:poison, "~> 1.5"},
    {:httpoison, "~> 0.8.1"}]
  end

  defp description do
    """
    A wrapper for sending iOS and Android push notifications.
    """
  end

  defp package do
    [
       files: ["lib", "mix.exs", "README*", "LICENSE*"],
       maintainers: ["Henry Popp"],
       licenses: ["MIT"],
       links: %{"GitHub" => "https://github.com/codedge-llc/pigeon"}
    ]
  end
end
