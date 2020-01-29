# defining binary using << >>
IO.inspect <<1, 2, 3>> # will print <<1, 2, 3>>
# size of byte
IO.puts byte_size(<< 1,2,3 >>)
# binary is a sequence of bytes
IO.puts String.valid?(<<239, 191, 19>>) # returns false
# binary concatanation operator/string concatanation
IO.inspect <<1, 2, 3>> <> <<4, 5>>
# concatinate inner binary with string to see inner reperesentation
IO.inspect "EzKemboi" <> <<0>> # prints <<104, 101, 108, 108, 111, 0>>
# view string's binary representations
IO.inspect("ezkemboi", binaries: :as_binaries)
# pattern match binary strings
<<x, 2, y>> = <<1, 2, 3>>
IO.inspect x
IO.inspect y
# want to match binary of unknown size
# use binary modifier at the end of the pattern
<<0, 1, x ::binary >> = <<0, 1, 2, 3>>
IO.inspect x
# string concatanation
"ez" <> name = "ezkemboi"
IO.puts name # print kemboi
