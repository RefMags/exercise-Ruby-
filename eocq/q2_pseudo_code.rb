=begin

<!--- CASUAL ---->

Given an array collection of strings.
Iterate through each element one by one.
  - save the first element of the array as starting value.
  - for each iteration, append the current value to the saved value.
After iterating through the collection, return the saved saved string.

<!--- FORMAL ---->

START
Given a collection of array `strings`

SET the word = strings[0]
SET the iterator = 1

WHILE iterator <= length of strings
SET word << current_string
PRINT word
END
=end

def word_concatenation(strings)
  new_word = " "

  strings.each do |string|
    new_word << string
  end

  new_word
end

puts word_concatenation(["S", "T", "A", "R", "T"])
