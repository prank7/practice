#Write a body of function power_of_two?(x) (javascript isPowerOfTwo) which has 
#to return true if the given natural number is power of 2 or false if the number is 
#not power of 2. The given number is always greater than 0.
#My solution
def power_of_two?(x)
  # code
  n = 0
  while (2**n) <= x
    if(2**n) == x
      return true
    end
    n = n+1
  end
  false
end



#Best practice
def power_of_two?(n)
  n & (n-1) == 0
end