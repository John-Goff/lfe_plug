defmodule LfePlug.MixProject do
  use Mix.Project

  def project do
    [
      app: :lfe_plug,
      version: "0.1.0",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {LfePlug.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:mix_lfe, github: "lfe/mix", branch: "master", only: [:dev, :test], runtime: false}
    ]
  end
end
