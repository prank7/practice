# Complete the solution so that it takes the object (JavaScript/CoffeeScript) or hash (ruby) passed in and generates a human readable string from its key/value pairs.

# The format should be "KEY = VALUE". Each key/value pair should be separated by a comma except for the last pair.

#my solution also best practice
def solution(pairs)
  # TODO: complete
  pairs.map{|a,b| "#{a} = #{b}"}.join(',')
end
