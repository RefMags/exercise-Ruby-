# Q1. differentiating mutating and non-mutating methods

def change_word(word)
	word.upcase
	word.upcase!
end

a = "hello"
p "Before mutating: #{a}"
change_word(a)
p "After mutating: #{a}"
change_word(a)


# Q2. example of implicit and explicit returns.
def greeting(word)
	word = word + "!!"
	# return
	p word # `=>  `is the word concatenated
  # puts word #if this is the last line to be executed, => nil, because of the method call `puts`
end

greeting("hi")
# p greeting("konnichiwa")
# p greeting("dumela")


# Q3. Explain the general concept of method definition and local variable scoping

=begin
Method definition create their own scope outside the regular
flow of execution.

Local variables created within the method cannot be accessed outside the method
definition.

Local variables have no access to data outside the method definition unless the
data is passed on to the method as arguments when we invoke the method.
=end

a = 5

def some_method
  a = 3
end

puts a

=begin
Output: 5
- because, local variable a that was initialized with integer 5 `a = 5` is not
accessible within the method definition `some_method`.
- similarly, when local variable `a` that is created within the inner scope of
method definition it is not accessible on the outer scope of the method definition.

=end

# example of where local variable a is accessible.

a = 5

def some_method(num)
  a = 3
end

puts some_method(a)

=begin
On line 66, we pass in `a` as argument in place of `num` to some_method and
invoke method.

On line 62, once local variable `a` that has been initialized with `5` has been
passed, it is assigned to local variable `num` and we can use it. In this case,
  we carry out a reassignement of the local variable `a` by assigning integer `s`
  to it.

=end

def add_three(num)
  num + 3
end

returned_value = add_three(4)
puts returned_value
