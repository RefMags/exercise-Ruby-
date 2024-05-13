# Q1. What concept does the code below depict? What are the outputs and return of code?

```ruby

greeting = 'Hello'
whatsup = greeting

greeting.upcase!
puts greeting
puts whatsup

whatsup << '!'
puts greeting
puts whatsup

greeting += ' bye'
puts greeting
puts whatsup
```

____
# MyAnswer

``` ruby
On line 5, the 'local variable `greeting` is initialized with string object with
 value `Hello`

On line 6, local variable `whatsup` is initialized by pointing to a string `Hello`
  that is referenced by `greeting`

On line 8, the `upcase!` method is called on to the `greeting` variable.
  This method is destructive, ie mutating and therefore changes the string
  object of `greeting` from `Hello` to all capitalized values `HELLO`.

Therefore, on line 9, when the `puts` method is called by passing in `greeting`
  `HELLO` is printed out and `nil` is returned.

On line 10, when `puts` method is called by passing in `whatsup`, `HELLO`
  is output, because the string that whatsup was pointing to, that was referenced
  by `greeting` is mutated when `upcase!` is called on the string `Hello`.
  `nil` is returned.

The concept descibes mutating vs non-mutating method calls, specifically, `upcase!`
method call as mutating method call.

```

____

# Q2. Describe the code below, state the output, the return and the condept associated with the code.

```ruby
a = 4

loop do
  a = 5
  b = 3
  break
end

puts a
puts b

```

***
# MyAnswer

```
On line 53, local variable `a` is initialized with an integer object 4.

On line 55 to 59, we call a `loop` method that takes in the `do...end` block as
  an argument.

On line 56 within the block, `a` is reassigned integer `5`.
On line 57 within the block, a local variable `b` is initialized with integer
  value `3`.
On line 58, a `break` is used to prevent an infinite looping of the method.

On line 61, `puts` method is called by passing in variable `a` as an argument,
  and this prints out, `5` because `a` was accessible withing the scope of the
  block method. The return is `nil`

On line 62, `puts` method is called by passing in variable `b` as an argument.
  An exception is raised because `b` was initialized within the block.
  The Rules of variable scoping state that it variables initialized within the
  block are not accessible on the outerscope of the block.

To make it possible to access `b` it needs to be initialized outside the block scope.

This concept describes the concept of variable scoping within the block, and the
  rules associated.
```

***

# Q3. What is the code below doing?

``` ruby
counter = 3

loop do |counter|
  puts "printing #{counter} times"
  counter += 1
end

```

***
# MyAnswer


On line 100, the local variable `counter` is initialized with with integer `3`.

On line 102 to 105, a `loop` method is called by passing in a block `do ... end`
  as an argument with `counter` as a block parameter.

On line 103, within the block, a `puts` method is called by passing in a string
  intrapolation as an argument. The `#{counter}` that is being intrapolated,
  references the block parameter `counter` which has the same name as
  the variable `counter` that was initialized outside the.
  This will result in shadowing.

The inner variable `shadows` the outer one, making the outer variable `inaccessible`
  within the inner scope.

Even though the outer variable could otherwise be in scope, it becomes `unreachable`
as long as the inner scope exists.

On line 104, a counter reassignment is performed by incrementing with 1.

We can correct this by changing the name of the block parameter.
***


______
This  questions were created in SPOT session with Su.
