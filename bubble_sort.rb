
array = [9, 6, 5, 3, 2]
def bubble_sort(array)
  n = array.length #5
  loop do
    swapped = false

    (n-1).times do |i| #5-1 = 4
      if array[i] > array[i+1] #array[0] > array[1]
        array[i], array[i+1] = array[i+1], array[i] #array[0],array[1] = array[1], array[0]
        swapped = true
      end
    end
    break unless swapped
  end
  array
end
sorted_array = bubble_sort(array)

# The code
# array[i], array[i + 1] = array[i + 1], array[i]
# is responsible for swapping the elements in the array. This is a common Ruby idiom for swapping two values.
# !Example
=begin
a = 4
b = 3
puts "A:#{a}" #4
puts "B:#{b}" #3
a,b = b,a
puts "A:#{a}" #3
puts "B:#{b}" #4
=end
# ! Example:
# Consider the array [9, 6, 5, 3, 2] and the first iteration where i = 0:

# Initial State:

# array[0] is 9
# array[1] is 6
# Condition Check:

# array[0] > array[1] (i.e., 9 > 6) is true.
# Swapping:

# array[0], array[1] = array[1], array[0]
# This assigns 6 to array[0] and 9 to array[1].
# After Swap:

# The array becomes [6, 9, 5, 3, 2].

# Execution Flow:
# First Iteration of Outer Loop:

# swapped is set to false.
# The inner loop runs (n-1) times, performing swaps if necessary.
# If any swaps occur, swapped is set to true.
# After Inner Loop:

# The break unless swapped statement is evaluated.
# If swapped is false, the outer loop breaks, ending the sorting process.
# If swapped is true, the outer loop continues for another iteration.

# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]
#! Using while
def bubble_sort(array)
  n = array.length
  swapped = true
  while swapped
    swapped = false
    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
  end
  p array
end
bubble_sort([4, 3, 78, 2, 0, 2])
# todo Correct, when using a while loop, you don't need an explicit break statement because the loop condition itself (while swapped) controls the termination of the loop. The loop will continue to execute as long as swapped is true, and it will terminate when swapped becomes false.
