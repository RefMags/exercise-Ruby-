# creating a hash

car = {
    type: "sedan",
    color: "blue",
    mileage: 80_000
}


# Add the key `:year` and the value `2003` to car [use hash from 3]

car[:year] = 2003
p car

# delete `:mileage` and its associated key value from car
car.delete(:mileage)
p car

# select the value `blue` from car and print it with `puts`
puts car[:color]

# Use the Hash#each method to iterate over the numbers and print each element's key/value pair.

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each {|key, value| puts "A #{key} number is #{value}."}

=begin
we call the hash method with `each` on hash `numbers`
define the block parameter,
to access the key and the value, the `each` method allows us to define two block
paramters as we iterate through the hash,
As we iterate through the hash each key/value pair will be passed to the block,
the key is assigned to the first block parameter `key` and the value will be assigned
to the second `value`.
we invoke `puts` and use string interpolation to output each `key` and `value`
as part of the string.

=end

# use Enumerable#map to divide by two.
half_numbers = numbers.map {|key, value| value / 2 }
p half_numbers

# return the key/value pairs containing only key-values where the value is less than 25
# the returned hash should be assigned variable name `low_numbers`.
# use the Hash#select to iterate over

low_numbers = numbers.select {|key, value| value < 25}
p low_numbers

# use a destructive method to mutate the `numbers` hash by selecting key-values pairs whose value is less than 25.

low_numbers = numbers.select! {|key, value| value < 25}
p low_numbers
p numbers

# created a nested hash using the following data.

car = {
    type: "sedan",
    color: "blue",
    year: 2003
}

truck = {
    type: "pickup",
    color: "red",
    year: 1998
}

vehicles = {
        car: {
          type: "sedan",
          color: "blue",
          year: 2003
        },
        truck: {
          type: "pickup",
          color: "red",
          year: 1998
        }
}

array_car = car.to_a
p array_car
