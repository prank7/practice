

# Create a class Ghost

# Ghost objects are instantiated without any arguments.

# Ghost objects are given a random color attribute of white" or "yellow" or "purple" or "red" when instantiated

#My solution
class Ghost
  # your code goes here
  attr_reader :color

	def initialize
	  @color = ['white','yellow','purple','red'].sample
	end
end

#Best practice
class Ghost
  def color
    %w(white yellow purple red).sample
  end
end