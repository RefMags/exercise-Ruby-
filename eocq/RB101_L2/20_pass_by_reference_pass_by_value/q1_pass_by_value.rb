# give an example of a method definition that closely describes Ruby as "pass-by-value"

def change_name(name)
  name = 'charlie'
end

name = 'bob'
change_name(name)
puts name  # output: `bob`

=begin
line 9, outputs 'bob', because the local variable on the main scope `name = 'bob'`
is not affected by the reassignement operation for the local variable
`name = 'charlie'` found in the method definition scope `change_name`
=end
