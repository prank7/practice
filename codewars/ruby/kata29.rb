# In this kata, you will write an arithmetic list which is basically a list that contains consecutive terms in the sequence. 
# You will be given three parameters :

# first the first term in the sequence
# c the constant that you are going to ADD ( since it is an arithmetic sequence...)
# l the number of terms that should be returned

#my solution
def seqlist(first,c,l)
		x = []
    l.times do |i|
      x[i]=(first + c*i)
  	end
    x
end


#best practice
def seqlist(first,c,l)
  Array.new(l) { |i| first+c*i }
end
