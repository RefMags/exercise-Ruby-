Q1. What is a literal?

```
Any notation that lets you represent a fixed value in source code.
```

***

Q2. Give 8 examples of literals and give an example of each.
```
Strings = "John"
Integer = 2
Float literal = 2.3
Symbol = :name
Nil
Boolean (True and False)
Arrays = ['Martha', 'Jacob', 'Jack', 'Harry']
Hashes = {:first_name => 'Jack', :last_name => 'Black'} or {first_name: 'Jack',last_name: 'Black'}
```

***
 Q3. What is a String?
 A string is a list of characters

***

Q4. When do we use string interpolation? Give example of how to use it.
When we merge Ruby code. " His name is #{name}"

***

Q5. What is a symbol and how is it used?
A symbol is an identifier. A symbol is like a string that serves a different purpose.


***

Q6. How are numbers represented in Ruby?
Numbers can be represented as integers or floats.

***

Q7. How do we express "nothing" in Ruby?
as nil

***

Q8. What does the puts method do?
prints out the string and returns nothing.

***

Q9. Give the most important property of nil.
Nil is used to represent the abscence of content when used in an expression as a statement.

***

Q10. What will the following code return? and why?

```ruby
if nil
    puts "Hello, World!"
end
=> nil
The code contained within the `if` method is not evaluated as 'nil' is evaluated as false.
```

***

Q11. What will the following code return? and why?

```ruby
if 1
    puts "hello, world!"
end
hello, world!
=> nil
'1' is nothing, and therefore evaluates to false and is not run.
```

***

Q12. What is the difference between division and modulo?
modulo can the thought of as a remainder operator. 16%5 = 1
Division can be thought of the divisor. 16/5 = 3

***

Q13. Give examples of methods that can account for division of numbers and how they relate to Division(/) or Modulo (%) operators:

16.remainder(5)
```the remainder method computes and returns the remainder of an integer division operation```

16.divmod(5)
```computes both the integer result of division and its modulo value.```

***

Q14. What does 'modulo operator'return when a second operand is positive? and when the second operand is negative? Give example:
```
The modulo operator return a positive when the second operand is positive and negative when the second operand is negative.

17%5 = 2
17%(-5) = -3
-17%(-5) = -2
-17%(5) = 3

```

***

Q15. What does a 'remainder operator' return when first operand is positive and when first operand is negative? Give examples.
```
The remainder operator returns a positive when the first operand is positive and a negative when the first operand is negative.

17.remainder(5) = 2
17.remainder(-5) = 2
(-17).remainder(5) = -2
(-17).remainder(-5) = -2

```
