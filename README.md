# Mix.Tasks.Codecov

`mix codecov` task creates `./codecov.json` report based on the exported test coverage

## Usage examples

* `mix codecov` - if no arguments supplied, the task imports all `*.coverdata` files from the `./cover` directory.
* `mix codecov _build/test/cover cover` - any supplied argument is treated as a directory name, the task imports all `*.coverdata` files from these directories.

## Installation

The package can be installed by adding `mix_codecov` to your list of dependencies
in `mix.exs`:

```elixir
def deps do
  [
    {:mix_codecov, "~> 0.1.0"}
  ]
end
```
