
# Sum Numbers
def sum(numbers)
  numbers.reduce(0){|num,e| num = num+e}
end

#Best
def sum(numbers)
  numbers.inject(0, :+)
end