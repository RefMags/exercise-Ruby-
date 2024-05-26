=begin

1. Write a program that prints a greeting message. This program should contain
a method called `greeting` that takes a `name` as its parameter and returns a string.

=end

def greeting(name)
  "good morning #{name}"
end

puts greeting("John")


=begin

2. What do the following expressions evaluate to?
  That is, what value does each expression return?


1. x = 2
# => 2  # variable assignment return value that is being assigned.

2. puts x = 2 # we assign and invoke the method `puts` and pass in assignment
# Outputs : 2
# => nil

3. p name = "Joe" # `p` output its argument and returns its argument
# => "Joe"

4. four = "four" # simple variable assignement. We are assigining "four" to variable "four"
# => "four"

5. print something = "nothing"
# nothing
=> nil

=end


=begin

3. Write a program that includes a method called `multiply` that
  takes two arguments and returns the product of the two numbers.

=end

def multiply(num1 = 5, num2 = 2) # parameters that are assigned a default value used.
   num1 * num2
end

puts multiply(4,2)
puts multiply()


=begin

4. What will the following code print to the screen?
# nothing, because we `return` from the method prior from executing the code `puts words`


5. 1) Edit the method definition in exercise #4 so that it does print words on
the screen. 2) What does it return now?
=end

def scream(words)
  words = words + "!!!!"
  # return  # when the explicit return is created the code immediately exit the method immediately
  puts words
end

p scream("Yippeee") # an invocation of a screem method


# Yippeee!!!
# => nil  # because without an explicit `return` in the method the return value
    # will be the return value of the last code executed

=begin

6. ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'


  # this error indicates that we are missing another argument to give method. given 1 expected 2
=end
