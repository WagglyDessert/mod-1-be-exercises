require './lib/user'
require 'pry'

RSpec.describe User do

  it "exists" do
    user = User.new("Alex")
  end

  it "can say hello" do
    user = User.new("Alex")
    expect(user.say_hello).to eq("Hello, Alex")
  end

  it "can create multiple users" do
    users = [
        {name: "Sal"},
        {name: "Brian"},
        {name: "Megan"},
      ]
    binding.pry ## Can you call User.create_multiple(users) in pry? What does it return?
    expect(User.create_multiple(users)).to be_a Array
    expect(User.create_multiple(users).length).to eq 3

    created_users = User.create_multiple(users)
    # binding.pry ##What is created_users in pry? What type is the first index? Can you access any properties on it?
    expect(created_users[0]).to be_a User
    expect(created_users[0].name).to eq("Sal")
    User.clear_users
  end

  it "can return cout of users" do
    users = [
        {name: "Sal"},
        {name: "Brian"},
        {name: "Megan"},
      ]

    User.create_multiple(users)
    expect(User.user_count).to eq(3)
    User.clear_users
  end

  it "clears class variable" do
    expect(User.clear_users).to eq([])
    expect(User.created_users).to eq([])
  end


end