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
  OPERATION_MESSAGES.fetch(operation, "Invalid Input")
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
    if (1..4).include?(operator)
      break
    else
      prompt("must include 1, 2, 3 or 4")
    end
  end
  puts("You selected: #{operation_to_message(operator)} the two numbers.")

  result =  case operator
            when 1
              number1.to_f + number2.to_f
            when 2
              number1.to_f - number2.to_f
            when 3
              number1.to_f * number2.to_f
            when 4
              if number2.to_f != 0
                number1.to_f / number2.to_f
              else
                prompt("Error: Can't divide by zero")
              end
            end

  prompt("#{operation_to_message(operator)} the two numbers is #{result}")
  prompt("Would you like to do another calculation?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using Calculator. See you next time!")
