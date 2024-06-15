# x = [1, 2, 3, 4, 5]

# x.each do |a|
#   a + 1
# end

# while loop that takes user and perfoms an action. stops when user says "STOP"
x = ''

# while x != 'STOP' do
#   puts "Hi how are you doing?"
#   answer = gets.chomp
#   puts "Do you want me to ask again?"
#   x  = gets.chomp
# end

def count_to_zero(number)
  puts number
  if number > 0
    count_to_zero(number - 1)
  end
end

count_to_zero(4)
