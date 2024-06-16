# check if number is present in the array
arr = [1, 3, 5, 7, 9, 11]
number = 3
p arr.include?(3) # return true if 3 is inluded.

if arr.include?(number)
  puts "#{number} is in the array"
end

# what does the program return and want is the value of `arr` after each?

1. arr = ["b", "a"]
   arr = arr.product(Array(1..3))
   arr.first.delete(arr.first.last)

2. arr = ["b", "a"]
   arr = arr.product([Array(1..3)])
   arr.first.delete(arr.first.last)
