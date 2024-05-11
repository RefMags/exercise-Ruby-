# Q1 What is the output and the return? Give explanation of the code.

```
a = "Hello"
b = a
a = "Goodbye"

puts a
puts b
```
***
## MyAnswer
```
On Line 4, local variable `a` is intialized with an object string with value `Hello`
On Line 5, a new local variable `b` is initialized with object string `Hello` which is also referenced by variable `a`
On Line 6, variable `a` is reassigned a new object string with value `Goodbye`

On Line 8, the `puts` method is being called with argument `a` and it outputs `Goodbye`
 because reassignement was made to the variable. The return is `nil`

On Line 9, the `puts` method is called with argument `b` and it outputs `Hello`.
  The return is `nil`

```

***
# Q2. Explain the code below: Give the output and waht is returned

```
greeting = "hi"
greeting + "Hello"
puts greeting
```
***
## MyAnswer
```

```

***

# Q3. What is the output and return of the code below? Describe in detail and state the concept demonstrated by the code.

```
array = [1, 2, 3,]

array.each do |element|
  a = element
do

puts a
```

***
## MyAnswer
```

```

***

# Q4. Follow up, based on Q2, how can we modify the code such that it `hi` is returned with "Hello".

***
## MyAnswer
```

```

***

# Q5. From Q3, how can we modify the code such that we output a when `puts` is called on the block?

```
array = [1, 2, 3,]

array.each do |element|
  a = element
do

puts a
```

***
## MyAnswer
```

```

***
