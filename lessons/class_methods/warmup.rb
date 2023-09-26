require './exercise_2/lib/user'

sam = User.new("Sam")
# # => #<User:0x007f94e3ab6218 @name="Sam">


puts sam.say_hello
# =>

# 1. What do we call #say_hello on?
# => "An instance of the User class", "an instance"
# 2. What do we call the method `#new` on?
# => "A class", "the User class"


# 3. Can you call #say_hello on the User class without instantiating it first? What happens?   (Ex: User.say_hello)
User.say_hello
  #nothing happens. undefined method for the class.
  # User.new("Sam").say_hello
  # adding self to method doesn't work either unless object is first instantiated

# 4. How can we access a method in our class that can say hello to someone WITHOUT instantiating a new object?
  # Assign parameter to method so it can use string interpolation


