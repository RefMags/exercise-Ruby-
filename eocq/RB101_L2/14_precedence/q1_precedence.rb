# 3 ? 1 / 0 : 1 + 2
# 5 && 1 / 0
# nil || 1 / 0


# p nil ? 1 / 0 : 1 + 2
# p nil && 1 / 0
# p 5 || 1 / 0


array = [1, 2, 3]

p array.map { |num| num + 1 }   # outputs [2,3,4]
                                # => [2,3,4]
# the return method of `map` gets passed to `p` as argument

array.map do |num|
  num + 1
end                      # => [2,3,4]

p array.map do |num|
  num + 1                # outputs #<Enumerator: [1, 2, 3]:map>
end                      #  => #<Enumerator: [1, 2, 3]:map>
# Why? blocks has the lowest precedence of all operators
