# Elixir Bug: Modifying a List During Enum.each Iteration

This repository demonstrates a common error in Elixir when attempting to modify a list while iterating over it using `Enum.each`. The issue arises because `Enum.each` does not modify the original list in place; instead, it iterates through the list's elements and executes the provided function for each element. Any attempts to modify the list within the function create a new list and the original list isn't affected.

The `bug.ex` file contains the buggy code.  The `bugSolution.ex` file offers several correct solutions.

## How to reproduce

1. Clone this repository.
2. Navigate to the repository's root directory.
3. Run `elixir bug.ex`