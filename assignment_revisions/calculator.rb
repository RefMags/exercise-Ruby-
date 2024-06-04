require 'yaml'
messages = YAML.load_file('calculator_messages.yml')

# preferred language setting
user_language = :en

# Accessing the operation messages and prompts

operation_messages = messages[user_language.to_s]['operation_messages']
prompts = messages[user_language.to_s]['prompts']

# prompt method using loaded messages  start here
def prompt(key, prompts)
  puts("=> #{prompts[key]}")
end

def integer?(input)
  input.to_i == input
end

def float?(input)
  input.to_f.to_i == input
end

def number?(input)
  integer?(input) || float?(input)
end

# OPERATION_MESSAGES = {
#   1 => 'Adding',
#   2 => 'Subtracting',
#   3 => 'Multiply',
#   4 => 'Dividing'
# }

def operation_to_message(operation)
  OPERATION_MESSAGES.fetch(operation)
end

prompt('welcome', prompts)

name = ''

loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(messages['valid_name'])
  else
    break
  end
end
prompt(messages['welcome_message'] + name)

loop do
  prompt(messages['insert_number1'])
  number1 = ''
  loop do
    number1 = Kernel.gets().chomp()

    if integer?(number1)
      break
    else
      prompt(messages['invalid_number_error:'])
    end
  end

  prompt(messages['insert_number2'])
  number2 = ''
  loop do
    number2 = Kernel.gets().chomp()

    if integer?(number2)
      break
    else
      prompt(MESSAGES['invalid_number_error:'])
    end
  end

  prompt(messages['op_prompt_msg'])
  prompt(messages['op_selection'])

  operator = ''
  loop do
    operator = Kernel.gets().chomp().to_i
    if (1..4).include?(operator)
      break
    else
      prompt(MESSAGES['invalid_operation'])
    end
  end
  prompt(MESSAGES['op_sel_confirmation'] + operation_to_message(operator))
  # prompt("You selected: #{operation_to_message(operator)} the two numbers.")

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
                prompt(MESSAGES['zero_div_error'])
              end
            end
  results = result.to_s
  prompt(operation_to_message(operator) + MESSAGES['result'] + results)

  # Prompt user for another calculation
  prompt(MESSAGES['calculate_again?'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['goodbye'])
