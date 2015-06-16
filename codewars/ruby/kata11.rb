# Finish the solution so that it sorts the passed in array of numbers. 
# If the function passes in an empty array or null/nil value then it should return an empty array.

#My solution
def solution(nums)
  nums ? nums.sort : []
end

#Best practice
def solution(nums)
  Array(nums).sort
end