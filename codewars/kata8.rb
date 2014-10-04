#In this kata you will create a function that takes a list of
#non-negative integers and strings and returns a new list with the strings filtered out.

# Example-
# filter_list([1,2,'a','b']) == [1,2]
# filter_list([1,'a','b',0,15]) == [1,0,15]
# filter_list([1,2,'aasf','1','123',123]) == [1,2,123]

#My solution
def filter_list(l)
	a = []
	l.each {|i| a.push(i) i.is_a? Integer}
	return a 
end

#best solution
def filter_list(l)
	l.select{|i| i.is_a?(Integer)}
end


#Learn - "select" selects from list according to the condition and saves it as well.
