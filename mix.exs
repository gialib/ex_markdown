defmodule ExMarkdown.Mixfile do
  use Mix.Project

  def project do
    [app: :ex_markdown,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps()]
  end

  def application do
    []
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
      { :credo,    "~> 0.4.0", only: [ :dev, :test ] },
      { :dialyxir, "~> 0.3.3", only: [ :dev, :test ] },
      { :floki, "~> 0.14.0", only: [ :dev, :test ] },
   ]
  end

  defp description do
    """
    A few sentences (a paragraph) describing the project.
    """
  end

  defp package do
    [# These are the default files included in the package
     name: :ex_markdown,
     ## files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
     files: ["lib", "mix.exs", "README*"],
     maintainers: ["Gialib", "happy"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/gialib/ex_markdown",
              "Docs" => "hexdocs.pm/ex_markdown"}]
  end
end
