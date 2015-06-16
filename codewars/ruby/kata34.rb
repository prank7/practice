#Sherlock has to find suspect on his latest case. He will use your method, dear Watson. The suspect in this case is a number which is most unique in given set, e.g.:

#has least (minimum) occurences in set
#and no other number has the same occurences count
#Write method which helps Sherlock to find suspect from given set of numbers. If no suspect is found the method should return nil.

#My solution
def find_suspect(*numbers)
  return nil if numbers.size == 0
  h = Hash.new(0)
  numbers.each {|a| h[a]=h[a]+1}
  h = h.sort_by{|k,v| v}
  arr = []
  h.each{|x| arr.push(x[1])}
  if arr[0] == arr[1]  
    return nil
  else
    return h[0][0]
  end
end



#Best solution
def find_suspect(*numbers)
  hash = numbers.each_with_object(Hash.new 0) { |n, o| o[n] += 1 }
  hash.select! { |k, v| v == hash.values.min }
  hash.size == 1 ? hash.keys.first : nil
end