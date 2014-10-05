
# Description:

# Write a small function that returns the values of an array that are not odd.

# All values in the array will be integers. Return the good values in the order they are given.


#my solution
def no_odds( values )
  # Return only non-odd values
  values.select{|a| a.even? ? a : nil}.to_a
end

#Best solution
def no_odds( values )
  values.select &:even?
end