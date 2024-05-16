# Q1 What is the output and the return? Give explanation of the code.

```ruby
a = "Hello"
b = a
a = "Goodbye"

puts a
puts b
```
***
## MyAnswer
```
On Line 4, local variable `a` is intialized with an object string with value of `Hello`
On Line 5, a new local variable `b` is initialized with object string with value of `Hello` which is also referenced by variable `a`
On Line 6, local variable `a` is reassigned a new object string with value of `Goodbye`

On Line 8, the `puts` method is being called by passing in the variable `a` as an argument which outputs/prints the string `Goodbye`
 because reassignement was made to the variable. The return is `nil`

On Line 9, the `puts` method is called by passing in variable `b` as an argument
  which is pointing to the string object `Hello` that is printed.
  The return is `nil`

This code snippet is an example of a concept of variables as pointers.
```

***
# Q2. Explain the code below: with emphasis to why the output is so, what is returned and state the concept being discussed.

```ruby
greeting = "hi"
greeting + "Hello"
puts greeting
```
***
## MyAnswer
```
On line 32, the local variable greeting is initialized with string object
  with value of `hi`

On line 33, the local variable greeting is joined by concatinating the string
  object with value `Hello` with a `+` operator. The `+` operator does not
  mutate the string value referenced by `greeting`. Therefore, `greeting` will
  still reference the string `hi`

On line 34, `puts` method is called by passing in the variable `greeting` as
  an argument. The code outputs `hi` and returns `nil`

the concept discuss mutating vs non-mutating method calls, specifically that the `+`
operator id not a mutating call.
```

***

# Q3. What is the output and return of the code below? Describe in detail and state the concept demonstrated by the code.

```ruby
array = [1, 2, 3,]

array.each do |element|
  a = element # print each element `1`, `2`, `3`
end

puts a
```

***
## MyAnswer
```
On line 59, we initialize local variable array with object Array that containes
  a collection of integers.

On line 61 to 63, the `each` method is called on
  the `array` variable and a `do...end` block is passed as an argument.
  `element` is the block parameter.

On line 62, within the block, an inner scope local variable `a` is initialized
  to the object reference by `element`. As the loop proceeds, `a` first points
  to 1, then 2 and finally 3.

On line 65, a `puts` method is called by passing in the variable `a` as an
  argument, which would raise an exception.

This is because, the variable `a` is an inner scope variable ie, created within
  therefore according to the rules of variable scoping in blocks, variables
  initiated within the block are not accessible outside or on the outer scope of the block.

```

***

# Q4. Follow up, based on Q2, how can we modify the code such that `hi` is output with `Hello`.

***
## MyAnswer
```ruby
greeting = "hi"
greeting + "Hello"
greeting << "Hello"  # an append `<<` method can be used
greeting += "Hello" # a reassignment can be made to the variable `greeting`
puts greeting  # the output printed is `hiHello`
```

***

# Q5. From Q3, how can we modify the code such that we output `a` when `puts` is called?

```ruby
array = [1, 2, 3,]

array.each do |element|
  a = element
do

puts a
```

***
## MyAnswer
```ruby
array = [1, 2, 3,]
a = nil # initalize `a` outside the block

array.each do |element|
  a = element
do

puts a # the output is 3 and return is `nil`
```

***





__________
This  questions were created in SPOT session with Su.
