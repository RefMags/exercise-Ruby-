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
  1. ask the user if they would like to perform another calculation
6. make the program greet the user with there name.
7. display the messages to confirm which operator has been choosen.
8. change multi-line string for long prompts such as when we ask for `operator`.
=end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(input)
  input.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

OPERATION_MESSAGES = {
  1 => 'Adding',
  2 => 'Subtracting',
  3 => 'Multiply',
  4 => 'Dividing'
}

def operation_to_message(operation)
  OPERATION_MESSAGES[operation]
end

prompt("Welcome to the Calculator! Please enter your name: ")

name = ''

loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Please input correct name:")
  else
    break
  end
end
prompt("Hi #{name}")

loop do
  prompt("Please input your first number:")
  number1 = ''
  loop do
    number1 = Kernel.gets().chomp()

    if integer?(number1)
      break
    else
      prompt("Hmmm...that is not a number. Please try again: ")
    end
  end

  prompt("Please input your second number:")
  number2 = ''
  loop do
    number2 = Kernel.gets().chomp()

    if integer?(number2)
      break
    else
      prompt("Hmmm...that is not a number. Please try again: ")
    end
  end

  operator_prompt = <<-MSG
  ("What operation would you like to perform?
    1. add
    2. subtract
    3. multiply
    4. divide"
  MSG
  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp().to_i
    if [1, 2, 3, 4].include?(operator)
      break
    else
      prompt("must include 1, 2, 3 or 4")
    end
  end
  puts("You selected: #{operation_to_message(operator)} the two numbers.")

  result =  case operator
            when '1'
              number1.to_s() + number2.to_s()
            when '2'
              number1.to_s() - number2.to_s()
            when '3'
              number1.to_s() * number2.to_s()
            else
              if number2.to_f == 0.0
                prompt("Cant divide by zero. Insert a number greater than 0")
              else
                number1.to_f / number2.to_f
              end
            end

  prompt("#{operation_to_message(operator)} the two numbers is #{result}")
  prompt("Would you like to do another calculation?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using Calculator. See you next time!")
