def greatest_number(numbers)
  saved_number = numbers[0] # set the first element of the collection as the starting point

  numbers.each do |num|  # use `each` method to iterate through `numbers` array
    if saved_number >= num
      next
    else
      saved_number = num # reassign the `num` to `saved_number`.
    end
  end

  saved_number
end

# numbs = [3, 5, 10, 50, 20, 20, 10]
puts greatest_number([3, 5, 10, 50, 20, 20, 10])
