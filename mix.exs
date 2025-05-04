defmodule Mix.Tasks.Codecov.MixProject do
  use Mix.Project

  @github_url "https://github.com/ErlGang/mix_codecov"

  def project do
    [
      app: :mix_codecov,
      version: "0.1.0",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      ## hex.pm package
      description: "A mix task to create a JSON report based on the exported test coverage",
      package: package(),
      ## docs
      source_url: @github_url,
      docs: docs()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :tools]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.34", only: :dev, runtime: false},
      {:jason, "~> 1.4"}
    ]
  end

  defp package do
    [
      maintainers: ["denys.gonchar"],
      licenses: ["Apache-2.0"],
      links: %{
        "GitHub" => @github_url
      }
    ]
  end

  defp docs do
    [
      main: "readme",
      extras: ["README.md": [title: "readme"]]
    ]
  end
end
