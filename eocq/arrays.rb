# check if number is present in the array
arr = [1, 3, 5, 7, 9, 11]
number = 3
p arr.include?(3) # return true if 3 is inluded.

if arr.include?(number)
  puts "#{number} is in the array"
end

# what does the program return and what is the value of `arr` after each?

arr = ["b", "a"]
   arr = arr.product(Array(1..3))
   # [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
   arr.first.delete(arr.first.last)
   # => 1
   # arr = [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

arr = ["b", "a"]
   arr = arr.product([Array(1..3)])
    # [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
   arr.first.delete(arr.first.last)
    # => [1, 2, 3]
    # arr = [["b"], ["a", [1, 2, 3]]]


# how do you return the word "example" from the following array?

arr = [["test", "hello", "world"],["example", "mem"]]

arr[1][0]
arr.last.first

# What does each method return ?
arr = [15, 7, 18, 5, 12, 8, 5, 1]

arr.index(5)
# 3

# arr.index[5]
# undefined method `[]`

arr[5]
# => 8

# What is the value of `a`, `b` and `c` in the following
string = "Welcome to America!"
a = string[6]
# e
b = string[11]
# A
c = string[19]
# nil

=begin
why do we get the following error :
  TypeError: no implicit conversion of String into Integer
  from (irb):2:in `[]='
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

when the following code is given below?
  names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'
=end

# names['margaret'] = 'jody'

# the argument passed to `[]` method should be an integer argument for `index`.
# it cannot be a `string` reference of the element being reassigned

names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'

# use `each_index` to iterate through own method and print each index and value of array
years = [2000, 2010, 2013, 2015]
years.each_index {|index| puts "#{index}. The year #{years[index]}."}

=begin
program should iterate through a new array to build new array.
increment each value in the original by 2.
return a new array and have the original array.
=end

numbers = [2, 4, 6, 8]

add_two = numbers.map {|number| number + 2}
p add_two
p numbers
