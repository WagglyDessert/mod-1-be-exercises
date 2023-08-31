# 1. Using #each, add to the method below, such that it takes in an array of names, 
# and returns an array of all names upcased.

kardashians = ["kris", "kim", "kourtney", "khloe", "rob"]

def upcase_names(names)
 upcased_names = []
 names.each do |name|
  upcased_names << name.upcase
 end
 upcased_names
end 

p upcase_names(kardashians)

# should return ["KRIS", "KIM", "KOURTNEY", "KHLOE", "ROB"]






# 2. Using #each, update the method below, such that it takes in an array of names,
# and returns a collection of the names that end in 'ie'

pets = ["Brutus", "Lucky", "Goldie", "Pepper", "Odie"]

def names_ending_in_ie(names)
 ie_names = []
 names.each do |name|
  if name.end_with?("ie") == true
  ie_names << name
  end
 end
 ie_names
end 

p names_ending_in_ie(pets)

# should return an array of ["Goldie", "Odie"]






# 3. Using #each, update the method below, such that it takes in an array of integers,
# and returns the first number that is over 100 when squared. 

nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

def first_num_thats_square_is_above_100(nums)
nums.each { |num| return num if (num ** 2) > 100}
end 

p first_num_thats_square_is_above_100(nums)

# should return the integer 11


#do/end notation vs. block
# balances = [1,2,3]
# balances.each { |i| puts i + 10 }

# balances.each do |balance|
#   puts balance + 10
# end
