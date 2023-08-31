require 'pry'
#### GLOBAL SCOPE
## Example 1

# x = 10
# puts x #=> 10
# puts y #=> error

## Example 2

# x = 10
# puts x #=> 10
# puts y #=> error
# y = 20

## Example 3

# x = 10
#  def say_hello
#    puts 'Hello World!'
#  end
#  puts x #=> 10

## Example 4

#  def print_variable
#    x = 4
#    puts x
#  end

#  x = 2
#  print_variable #=> 4

## Example 5

#  def print_variable
#    x = 4
#  end

#  x = 2
#  print_variable #=> nothing
#  puts x #=> 2

##

#### ARGUMENT SCOPE

## Example 10

#  def print_variable(x)
#  puts x
#  end

# print_variable(4) #=> 4

## Example 11

#  def print_variable(x)
#    puts x
#  end

#  x = 4
#  print_variable(x) #=> 4

## Example 12

#  def print_variable(x)
#    puts x
#  end

#  print_variable(2) #=> 2
#  puts x #=> error

## Example 13

#  def print_variable(x)
#  x = 4
#  puts x
#  end

#  print_variable(2) #=> 4
#  puts x #=> error, not defined globally

#### BLOCK SCOPE

## Example 14

#  numbers = [1, 2, 3]
#  total = 0
#  numbers.each do |number|
#    total += number
#  end

#  p total #=> 6

## Example 15

#  numbers = [1, 2, 3]
#  total = 0
#  numbers.each do |number|
#    pizza = 'yummy!'
#    total += number
#  end

#  p pizza #=> error, stays inside block

## Example 16

#  numbers = [1,2,3]
#  total = 0
#  numbers.each do |number|
#    total += number # shorthand for: total = total + number
#  end

#  p number #=> error

## Example 17

#  numbers = [1,2,3]
#  number = 0
#  numbers.each do |number|
#    puts number #=> 1,2,3
#  end

## Example 18

#  numbers = [1, 2, 3]
#  numbers.each do |number|
#    number = 0
#    puts number #=> 0,0,0
#  end

## Example 19

#  numbers = [1,2,3]
#  def number
#    0
#  end
#  numbers.each do |number|
#    puts number #=> 1,2,3 block scope overrides method scope
#  end
