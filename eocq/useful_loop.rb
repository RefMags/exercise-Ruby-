i = 0
loop do
  i = i + 1
  puts i
  break # the execution exit the loop; `break` exits the loop not the program
end

i = 0
loop do
  i = i + 2
  puts i
  if i == 10 #
    break  # execution exit the loop
  end
end
