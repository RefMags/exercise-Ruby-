=begin
build a command line calculator program that:
1. asks for two numbers
2. asks for the type of operation to perform: add, subtract, multiply or divide
3. perform the operation
3. displays the results
=end
def prompt(message)
  Kernel.puts("=> #{message}")
end

prompt("Welcome to the Calculator!")


prompt("Please input your first number:")
number1 = Kernel.gets().chomp()


prompt("Please input your second number:")
number2 = Kernel.gets().chomp()


prompt("What operation would you like to perform? 1) add 2) subtract 3) multiply 4. divide")
operator = Kernel.gets().chomp()

result =  case operator
          when '1'
            number1.to_i() + number2.to_i()
          when '2'
            number1.to_i() - number2.to_i()
          when '3'
            number1.to_i() * number2.to_i()
          else
            number1.to_f() / number2.to_f()
          end

prompt("The result is #{result}")
