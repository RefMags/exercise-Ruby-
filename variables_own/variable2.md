# Q1. Describe the mechanism of a variable scope?

variable scoping refers to the accessibility for use of variables within a code program.

It is defined by where the variable is initalized.

In Ruby, a variable scope is defined by a `method definition` pf by a `block` and
  each have their own behaviors within variable scope.


***

# Q2. What are methods?

These are pieces of reusable code in Ruby

***

# Q3. Describe what the method below is doing?

```ruby
name = 'Somebody Else'

def print_full_name(first_name, last_name)
  name = first_name + ' ' + last_name
  puts name
end
```

On line 22, local variable `name` is initialized with a string object with value `Somebody Else`

On line 24 to 27, a method definition `print_full_name` is defined that takes in
  two parameters `(first_name, last_name)`

  On line 25, within the method, `name` is initialized by `first_name + ' ' + last_name`

  On line 26, `puts` method is called by passing in `name` as an argument. This output
***

# Q4. Methods have self-contained scope. Describe what this is in terms of varible scope?



***

# Q5. What is a block?

***


# Q6. What is the one rule to remember about blocks?
