=begin
<! -- Casual -- >
Given two integer values.
Add the sum of the integer values
Print the sum of the integer values

<! -- Formal -- >
Method that returns the sum of two numbers.

START
SET two numbers to first_number = first number given
                    second_number = secoond number given

SET sum = first_number + second_number
PRINT sum
end
=end

first_number = gets.chomp.to_i
second_number = gets.chomp.to_i

sum = first_number + second_number
puts "the total of the two intergers is #{sum}"
