require "pry"
# For clarity, un-comment each #binding.pry to verify your assumptions against the user_spec test. Use the questions in comments to guide your exploration.


class User
  attr_reader :name, :users
  
  @@users = []

  def initialize(name)
    @name = name
    
#binding.pry ##What is the @name property?
  end

  #this is a class method
  def self.say_hello
    puts "Hello!"
  end

  #this is an instance method
  def say_hello
    #binding.pry ##What will be output here?
    "Hello, " + @name
  end

  def self.create_multiple(users)
    created = []
    users.map do |user|
      new_user = User.new(user[:name])
      @@users << new_user
      created << new_user
      #binding.pry ## What is new_user? What properties does it have?
    end
    created
  end

  def self.user_count
    @@users.count
  end

  def self.clear_users
    @@users = []
  end

  def self.created_users
    @@users
  end
end
