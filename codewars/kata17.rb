# Write a function that finds the sum of all its arguments.



def sum(*args)
 # find the sum of all arguments here
  x =0
  y = Array(args.collect)
  y.each {|a| x = x+a}	
  return x
end

puts sum(1,2,3)


#bet pracice
def sum(*args)
  args.inject(:+)
end