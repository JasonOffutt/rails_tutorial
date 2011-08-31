class User
  attr_accessor :name, :email       # property definitions (getter/setter)
  
  # initialize has special meaning in Ruby
  # It funcitons as the constructor, so when you:
  # user = User.new, initialize will be triggered
  def initialize(attributes = {})   # assigning a default value of empty hash
    @name = attributes[:name]
    @email = attributes[:email]
  end
  
  def formatted_email
    if !@name.nil? && !@email.nil?
      "#{@name} <#{@email}>"
    end
    return ''
  end
end


# Chapter 4 Excersizes...

# Create a method that takes a string an shuffles the characters...
class String
  def shuffle
    # Split on empty string, so every character gets split on
    self.split('').shuffle.join
  end
end

# Hash of hashes...

person1 = { :first => "jason", :last => "offutt" }
person2 = { :first => "rebecca", :last => "offutt" }
person3 = { :first => "asher", :last => "offutt" }
params = { :father => person1, :mother => person2, :child => person3 }

