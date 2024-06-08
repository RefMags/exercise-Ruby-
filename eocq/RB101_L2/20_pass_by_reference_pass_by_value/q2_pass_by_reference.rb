 # give an example of a method definition that closely describes Ruby as "pass-by-reference"

def change_arr(arr)
  arr.pop
end

arr = [1, 2, 3]
change_arr(arr)
puts arr.inspect


=begin
the array that the local variable `arr` references has been permanently modified
by passing it to the `change_arr` method, even though `arr` is outside the method
defintionn's scope.

The `pop` method mutates is calling object(array specified by `arr`) in line 4.
`arr` is still pointing to the same arra, but in this case the number of element
in the array has changed.

=end
