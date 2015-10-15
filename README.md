# SimpleBar

**The most simple command line progress bar available**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add simple_bar to your list of dependencies in `mix.exs`:

        def deps do
          [{:simple_bar, "~> 0.0.6"}]
        end

  2. Ensure simple_bar is started before your application:

        def application do
          [applications: [:simple_bar]]
        end


## Usage

        defmodule A do
            def do_thing(n) do
                SimpleBar.start([n], n)
                    |> _do_thing(n-1,n)
            end

            defp _do_thing(list_of_numbers,0,total_number) do
                SimpleBar.step(list_of_numbers, Enum.count(list_of_numbers), total_number)
            end

            defp _do_thing(list_of_numbers,n,total_number) do
                SimpleBar.step([n | list_of_numbers],Enum.count(list_of_numbers),total_number)
                    |> _do_thing(n-1,total_number)
            end
        end

## [Documentation](http://hexdocs.pm/simple_bar/extra-api-reference.html)