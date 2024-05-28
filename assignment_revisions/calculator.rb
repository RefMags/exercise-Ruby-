=begin
build a command line calculator program that:
1. asks for two numbers
2. asks for the type of operation to perform: add, subtract, multiply or divide
3. perform the operation
3. displays the results

Refactoring the calculator:
1. add a prompt to the messages across the application.
2. How can we modify the `if` statement conditions.
3. How can we validations(number and operator) to be entered.
4. repeat the calculator for the user.
6. make the program greet the user with there name.
7. display the messages to confirm which operator has been choosen.
8. change multi-line string for long prompts such as when we ask for `operator`.
=end
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i != 0
end

prompt("Welcome to the Calculator!")

loop do
  prompt("Please input your first number:")
  number1 = ''
  loop do
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("Hmmm...that is not a number. Please try again: ")
    end
  end

  prompt("Please input your second number:")
  number2 = ''
  loop do
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("Hmmm...that is not a number. Please try again: ")
    end
  end

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

  prompt("Would you like to do another calculation?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using Calculator. See you next time!")
