
=begin
Local Variable Scoping Rules in Relation to Blocks
- If local variable scoping rules determine where in the program a local variable
can be accessed, in this case, we are talking specifically in the context of blocks.

Question:
- If a local variable is initialized outside of a block, is it accessible from within the block?
- If a local variable is initialized inside of a block, is it accessible from the outside?
- How do you create a scope in Ruby?
  * A block creates a scope
=end

# Independent Examples:
a = 1

loop do
  puts a
  break
end

loop do
  b = 2
  break
end

puts b

# Combined Example:
a = 1

loop do
    puts a # Outputs 1 on the console
    b = 2
end

puts b     # Raises an exception

=begin
Suggestion

=end








_____
______
This  questions were created on 1 on 1 session with G.
