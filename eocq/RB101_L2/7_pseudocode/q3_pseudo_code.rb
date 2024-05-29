=begin

<!--- Casual ---->
Given a collection of array of integers.
Iterate through the collection
 - save the first element of the array
 - for each iteration, if the next element is in an odd index position skip it.
 - otherwise populate the array with elements that are on the even position.
After completing the iteration, print the new array with every other element

<!--- Formal ---->

START
SET array = [array of integers]
SET new_array = []
SET iteration = 0

WHILE iteration <= length of array
  SET new_array = value of the first number of the array
  IF iterator % 2 != 0
    go to the next iteration
  ELSE
    new_array << integer at the iteration

    iteration = iteration + 1

  END

  PRINT new_array
END

=end

def every_other(intergers)
  new_array = []

  integers.each do |integer|
    if

    end
  end
end

every_other([1,4,7,2,5])
