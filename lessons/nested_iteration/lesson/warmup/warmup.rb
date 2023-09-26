# Part One
# Given the follow array:
animals = [:dog, :cat, :zebra, :quokka, :unicorn, :bear]

# Use an enumerable to
# 1. Return an array of animals as strings.
animal_string = animals.map do |animal|
  animal.to_s
end
pp animal_string

-or-

animal_string = []
animals.each do |animal|
  animal_string << animal.to_s
end
pp animal_string
# 2. Return an array of animals with a length >= 4.
animals.find_all do |animal|
  if animal.length >= 4
  pp animal
  end
end

# Part Two

# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# Use an enumerable to:
# 1. Return an unnested (single layer) array of animals as strings
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]
nested_animals_string = nested_animals.flatten.map do |animal|
  animal.to_s
end
pp nested_animals_string

-or-

unnested_animals = []
nested_animals_string = nested_animals.each do |animal|
  animal.map do |a|
  unnested_animals << a.to_s
  end
end
pp unnested_animals


# 2. Return an unnested array of animals with length >= 4
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]
nested_animals_length = nested_animals.flatten.find_all do |animal|
  animal.length >= 4
end
pp nested_animals_length

-or-

animals_four = nested_animals.flat_map do |animals|
  animals.find_all do |animal|
    animal.length >= 4
  end
end
p animals_four


# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

animals_hash = Hash[nested_animals.flatten.collect { |animal| [animal, animal.length] }]
#this syntax cretes nested array with key value pairs and then calls to_h

-or-

hash = {}
nested_animals.flatten.each do |animal|
  hash[animal] = animal.length
end
pp hash

-or-

animals_hash = nested_animals.flatten.reduce({}) do |hash, animal|
  hash[animal] = animal.to_s.length
  hash
end
p animals_hash
