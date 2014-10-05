# Define a new instance method on the Ruby string class called hashtags.

# It returns an array of all alphanumeric hashtagged words in a string. A string with no hashtagged words should return an empty array.

# Character case sensitivity is not important in this kata.

#My solution
class String
  def hashtags
  x =[]
    self.split(' ').each do |word|      
      if word.start_with?('#') 
        x.push(word)
      end
    end
  x
  end
end

#best practice
def hashtags
    scan /#\w+/
end 

#Learn - Use REGEX dude