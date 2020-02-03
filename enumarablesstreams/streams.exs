~S"""
streams is opposite of Enum and support lazy loading
they are lazy, composable enumarables
"""
odd? = &(rem(&1, 2) != 0) # use function capturing
streamed_data = 1..100_000 |> Stream.map(&(&1 * 3)) |> Stream.filter(odd?) |> Enum.sum
IO.puts streamed_data
# they are composable because we can pipe many stream operations
~S"""
Instead of generating an intermediate list,
streams build a series of computations that are only invoked when we pass 
the underlying stream to the Enum module.
Streams are useful when working with large data, possible infinite, collections.
"""
# other notes to follow
~S"""
Stream.cycle/1 can be used to create stream that cycles a given enumarable times.
But, don't call something like Enum.map/2 on such stream has it will cycle forever
"""
stream = Stream.cycle([1, 2, 3])
IO.inspect Enum.take(stream, 10) # Get 10 items [1, 2, 3, 1, 2, 3, 1, 2, 3, 1]
# Stream.unfold/2 is used to generate values from initial list
stream_unfold = Stream.unfold("ezkemboi", &String.next_codepoint/1) 
IO.inspect Enum.take(stream_unfold, 3)
~S"""
Stream.resource/3 can be used to wrap around resources,
guaranteeing they open right before enumaration and closed afterwards,
even in case of any failure 
"""
stream_resource = File.stream!("./enumarables.exs")
IO.inspect Enum.take(stream_resource, 10)  
# explanation is below
~S"""
the above code will fetch the first 10 lines of enumarables.exs file
thus, making streams very useful in handling large files or 
slow resource like network resources
"""