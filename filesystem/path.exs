# Path module provide best way to work with paths
IO.inspect Path.join("ez", "kemboi")
IO.inspect Path.expand("~/ez")
# on windows, elixir convert slashes(/) to backslashes (\)
