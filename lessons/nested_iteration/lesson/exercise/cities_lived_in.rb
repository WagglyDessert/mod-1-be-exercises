cities_lived_in = {
    michaela: ["Philadelphia", "Fort Collins", "Seattle"],
    mike: ["Denver", "Santa Fe", "Philadelphia", "Portland"],
    pamela: ["Lansing"],
    alex: ["Seattle", "Columbus", "Philadelphia", "Austin"]
}


# Problem #1: 
# Get a unique list of all of the cities that these humans have lived in  
# ["Philadelphia", "Fort Collins", "Seattle", "Denver", "Santa Fe", "Portland", "Lansing", "Columbus", "Austin"]
array = cities_lived_in.flat_map do |k, v|
    v
end
pp array.uniq

-or-

p cities_lived_in.values.flatten.uniq

-or-
city_names = []
cities_lived_in.each do |name, cities|
    cities.each do |city|
        if !city_names.include?(city)
            city_names << city
        end
    end
end
p city_names


# Problem #2: 
# Write code that iterates through the `cities_lived_in` hash, and returns a list of  
# names of the humans who've lived in Philadelphia.

# [:michaela, :mike, :salvador]
# or
# ["Michaela", "Mike", "Salvador"]
franklins = []
cities_lived_in.each do |person, city|
    if city.include?("Philadelphia")
        franklins << person
    end
end
p franklins

# Problem #3: 
# Create a hash that has the city as a key, and the number of people that live in it as it's value: 

# {
#     "Philadelphia" => 3,
#     "Fort Collins" => 1,
#     "Seattle" =>2,
#     "Denver" => 1,
#     "Santa Fe" => 1,
#     "Portland" => 1,
#     "Lansing" => 1,
#     "Columbus => 1,
#     "Austin" => 1
# }

city_tally_count = Hash.new(0)
cities_lived_in.values.flatten.each do |x|
    city_tally_count[x] += 1
end
p city_tally_count

-or-

city_occupants = Hash.new(0)

cities_lived_in.each do |_, cities|
    cities.each do |city|
        city_occupants[city] += 1
    end
end

p city_occupants