=begin
1. Explain what the following code outputs and return.

=end

a = "Hello" # the string object value "Hello" is assigned to variable `a`

if a
  puts "Hello is truthy"
else
  puts "Hello is falsy"
end

# OUTPUT and RETURN
 # => Hello is truthy # Ruby considers any string to be truthy

# Test
# a
  # => Hello
# a == true
  # => false # WHY: Ruby does not consider `a` variable `true` because
  # it is not being evaluated against any conditional logic.

# a.class
  # => String


=begin
1. Explain what the following code outputs and return.

=end

def test
  puts "you got it"
end

score = test

if score
  puts " you got it "
else
  puts "try again"
end
