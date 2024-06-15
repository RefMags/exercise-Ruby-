# perform_again.rb
# do/while
loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  break if answer != 'Y'
end
