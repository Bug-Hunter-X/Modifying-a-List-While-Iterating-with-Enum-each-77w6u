```elixir
list = [1, 2, 3, 4, 5]

# Solution 1: Using Enum.filter
filtered_list = Enum.filter(list, fn x -> x != 3 end)
IO.inspect(filtered_list) # Output: [1, 2, 4, 5]

# Solution 2: Using List.delete in a new list assignment
list2 = List.delete(list, 3)
IO.inspect(list2) # Output: [1, 2, 4, 5]

# Solution 3:  Building a new list using Enum.reduce
list3 = Enum.reduce(list, [], fn x, acc ->
  if x != 3 do
    [x | acc]
  else
    acc
  end
end)
IO.inspect(list3) # Output: [5, 4, 2, 1]
```