
# what do the following expressions return?

(32 * 4) >= 129
# false

false != !true
# false

true == 4
# false

false == (847 == '847')
# true

(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
 !true || !true || true || false
# true

def change_string(str)
  if str.length > 10
    str.upcase
  else
    puts " Can only capitalize strings longer than 10"
  end
end

p change_string("hello world")

=begin
write a program that takes a number between 0 and 100 and reports back whether
it is between 0 and 50 , 51 and 100 or above 100
=end

# evaluate_num.rb

puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i

if number < 0
  puts "You can't enter a negative number!"
elsif number <= 50
  puts "#{number} is between 0 and 50"
elsif number <= 100
  puts "#{number} is between 51 and 100"
else
  puts "#{number} is above 100"
end

# Snippet 1
'4' == 4 ? puts("TRUE") : puts("FALSE")
# False

# Snippet 2
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end

# puts Did you get it right?

# Snippet 3
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end

# outputs: Alright now!

# when the following code is ran, you get an error, why?
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end  # => `end` keyworrd is missing for the `if` statement
end


equal_to_four(5)

# exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end

# do the following expressions return true or false or raise an error?

(32 * 4) >= "129"
# Raises error

847 == '847'
# false

'847' < '846'
# false

'847' > '846'
# true

'847' > '8478'
# false

'847' < '8478'
# true
