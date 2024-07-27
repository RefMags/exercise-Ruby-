# Q1. Explain the concept of pass by value and pass by reference in Ruby. Give an example for each [5points]


***

# Q2. In Ruby, some methods can mutate the object they are called on, while others cannot. Can you give and example of a method that mutates the caller and explain why its able to do so? Similarly, can you give an example of a method that does not mutate the caller and explain why it doesnt? [5points]

***

# Q3. Consider the following code:

```ruby
x = 10
3.times do |x|
  puts x
end

puts x
```
# What will be the output of this code and why? What concept is being demonstrated? [5points]

***

# Q4. What will be output of this code? Can you how explicit return is at play here?[2points]

```ruby
def greeting(name)
  return "Hello, #{name}!"
  "How are you, #{name}?"
end

puts greeting("Alice")
```
***
# Q5. Consider these following code:
```ruby
a = [1, 2, 3]
b = a
b << 4
b += [5]

```

# What will be the value of `a` and `b` after these operations? Why? What concept is being demonstrated [5points]

***

# Q6. What will be the value of `b`? Why? [2points]

```ruby
a = nil
b = a || "default"
```
***

# Q7. Consider the following code:

```ruby
def calculate
  a = 2 + 2
  puts a
  return a * 2
end
b = calculate
```

# What will be output and return of this code and value of `b`? Why? [5points]

***

# Q8. Given the Ruby code below, what will be output and returned? Why [5points]

```ruby
a = [1, 2, 3]
b = [4, 5, 6]
b.each do |num|
  a = num
  p a
end
 a
```
***

# Q9. What does the following code return and output? Why and what concepts does  it demonstrate? [5points]

```ruby
def test(str)
  str  += '!'
  str.downcase!
end

test_str = 'Written Assessment'
test(test_str)

puts test_str

```
***

# Q10. What is a block? Cam you give example of two peer blocks that use the same variable [4points]
