# Ruby functions have implicit returns. The result of the last executed
# statement will be automatically returned by Ruby. You can explicily return
# by using the "return" keyword preceeding a statement, just like nearly
# any other language.

def method(string)
  "you said: " + string
end

# method "hi" returns 'you said: hi'


# In Ruby, parentheses on method calls are optional...
some_method("argument1", "argument2")
# is the same thing as...
some_method "argument1", "argument2"


# Methods can be defined without parentheses as well
def method string
  "you said: " + string
end


# Instance variables are defined with an "@" symbol
@foo = "foo"
puts @foo

# Local variables are declared normally
foo = "foo"
puts foo

# But a call to an undefined local variable will throw an error
puts bar  # this throws an error

# However, a call to an undefined instance variable will return nil
# (i.e. - null)
puts @bar  # returns nil


# Arrays in Ruby are similar to ArrayLists in C# or Java in that they can
# contain nearly anything, including a mixed set of object types.
array = "a b c".split
array << 1 << 3


# Ranges are pretty neat. They allow you to grab a range of items from an array
array = "a b c d e f".split
puts array[0..3]

# prints the first 4 elements of the array

# Blocks are blocks of code that define a block-level variable.


# Different ruby methods can accept blocks. In this context blocks can behave
# kind of like anonymous delegates in C# or anonymous functions in JavaScript

       (0..5).each { |i| puts 2 * i }
# - or -
       (6-10).each do |i|
         puts 2 * i
       end
       
# The above block will operate similarly to a foreach loop where |i| is the
# index variable.


# Ruby hashes are just like any other language (e.g. - Dictionaries in C#).
# Hash definitions in Ruby look similar to PHP:
hash = { "last_name" => "offutt", "first_name" => "jason" }
puts hash["fist_name"]

# You can also use symbol notation for hashes
hash = { :first_name => "jason", :last_name => "offutt" }
puts hash[:first_name]

# Just like in other languages, hashes can have nested hashes
hash[:login_info] = { :username => "theuser", :password => "secret" }

# You can iterate over hash members like so:
hash = { :success => "yay!", :fail => "boo!" }
hash.each do |key, value|
  # The use of inspect is very System.Reflection-esque
  puts "Key '#{key.inspect}' has value '#{value.inspect}'"
end

# Very similar to foreach in C# where you get access to both key and value of
# the hash item being iterated on.


# Ruby uses classes just like other OO languages. Objects get constructed via
# their constructors just the same:
var = "1"
# or...
var = String.new("1")

# A call to the 'class' method will give you the type
var.class  # returns "String"

# Arrays can be constructed the same way...
array = Array.new([ 1, 2, 3 ])

# Hashes are different, though...
h = Hash.new  # return '{}'

# Accessing non-defined members of a hash returns nil
puts h[:foo]  # returns nil

# You can assign default values for non-defined hash members, though...
h = Hash.new(0)
puts h[:foo]  # now returns '0'

# The merge method will attempt to merge two hashes together.
h1 = { :a => "a", :b => "b" }
h2 = { :c => "c", :d => "d" }
h3 = h1.merge(h2)
# Returns { :a => "a", :b => "b", :c => "c", :d => "d" }

# If any keys overlap, the hash being passed in will take precedence.
h1 = { :a => "a", :b => "b" }
h2 = { :b => 1, :c => "c" }
h3 = h1.merge(h2)
# Returns { :a => "a", :b => 1, :c => "c" }

# The merge method also accepts a block to handle overlaps.
h1 = { :a => "a", :b => "b1" }
h2 = { :b => "b2", :c => "c" }
h3 = h1.merge(h2) do |key, oldval, newval|
  oldval + newval
end
# Returns # Returns { :a => "a", :b => "b1b2", :c => "c" }



# Classes in Ruby have a Pascal-case convention, just like in C#
# Class declarations in Ruby look like this:
class Word < String  # Inheriting from the "String" class

  # Class-level method
  def palindrome?
    self == self.reverse
  end

end

my_word = Word.new("pip")
my_word.palindrome?  # returns 'true'

# You can get the class definitions by calling 'class' on an object as stated
# previously
my_word.class  # returns 'Word'

# You can get the superclass for an object by calling 'superclass' on its class
my_word.class.superclass  # returns 'String'

# Inheritance works just like other languages. Concrete classes gain all the
# methods and properties of their superclass
my_word.length   # returns 3
my_word.reverse  # returns 'pip'

# Ruby supports monkeypatching, so you can append functionality or replace
# existing functionality of your own...

class String
  # Add palindrome method to the String class
  def palindrome?
    self == self.reverse
  end
end

# We can now call palindrome? on a string
"level".palindrome?  # returns 'true'

