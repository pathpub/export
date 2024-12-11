defmodule Export.Mixfile do
  use Mix.Project

  def project do
    [
      app: :export,
      description: "Erlport wrapper for Elixir",
      package: package(),
      version: "0.2.0",
      elixir: "~> 1.6",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      docs: [
        main: Export,
        source_url: "https://github.com/pathpub/export"
      ]
    ]
  end

  def package() do
    [
      maintainers: ["jimmybot", "mdg"],
      licenses: ["MIT"],
      links: %{
        github: "https://github.com/pathpub/export"
      }
   ]
  end

  def application() do
    [
      applications: [:erlport]
    ]
  end

  defp deps() do
    [
      {:erlport, "~> 0.11"},
      {:ex_doc, ">= 0.35.1", only: :dev},
    ]
  end
end
