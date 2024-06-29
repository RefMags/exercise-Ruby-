# def add_two(num)
#   total_with_two = num + 2
# end

# value = 4
# p add_two(value)
# p value

# def unpluralize(str)
#   str.slice(-1)
# end

# word = "papers"
# puts unpluralize(word)
# # puts word

# def cap_letters(quote)
#   quote << "- Robert Greene "
# end

# bf = "“The time that leads to mastery is dependent on the intensity of our focus.” "
# p cap_letters(bf)
# p bf

def write_essay(quote)
  quote = "mastery = time * intensity of focus"
end

bf = "“The time that leads to mastery is dependent on the intensity of our focus.” "
p "Before mutating: #{bf}"
# p bf.object_id
p write_essay(bf).object_id
p "After mutating: #{bf}"
# p bf.object_id
