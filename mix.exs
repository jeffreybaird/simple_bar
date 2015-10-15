defmodule SimpleBar.Mixfile do
  use Mix.Project

  def project do
    [app: :simple_bar,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: "The simplest cli progress bar",
     package: package,
     deps: deps]
  end

  def package do
    [
      maintainers: ["Jeffrey Baird"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/jeffreybaird/simple_bar"}
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    []
  end
end
