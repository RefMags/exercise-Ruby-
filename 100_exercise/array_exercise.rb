pets = ['cat', 'dog', 'fish', 'lizard']
my_pet = pets[2] # first question code
my_pets = pets[2..3]
my_pets.pop
my_pets.push(pets[1])

puts "I have a pet #{my_pet}!" # first question code
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"
puts "I have a pet #{my_pets[0]}"
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}! "


# iterate and print color

colors = ['red', 'yellow', 'purple', 'green']

colors.each {|color| puts "I'm the color #{color}!"}

# Doubled, iterate and return a double of each element in the array

numbers = [1, 2, 3, 4, 5]

p doubled_numbers = numbers.map {|number| number * 2}

# return numbers only divisible by 3:

numbers = [5, 9, 21, 26, 39]

p divisible_by_three = numbers.select {|number| number % 3 == 0 }

# favourite number
favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

# flatten
p favorites.flatten

# are we the same?

array1 = [1, 5, 9]
array2 = [1, 9, 5]

puts array1 == array2
puts array1.eql?(array2)
