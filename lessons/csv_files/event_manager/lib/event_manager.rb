# ./lib/event_manager.rb
require "csv"
puts "EventManager initialized."

## creates csv file
#  ##curl -o event_attendees.csv http://tutorials.jumpstartlab.com/projects/event_attendees.csv

## gives each line of the csv file
# contents = File.read "event_attendees.csv"
# puts contents

##prints first name via index position for first name column
# lines = File.readlines "event_attendees.csv"
# lines.each do |line|
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end

## this ignores first row when we display names
# lines = File.readlines "event_attendees.csv"
# lines.each do |line|
#   next if line == " ,RegDate,first_Name,last_Name,Email_Address,HomePhone,Street,City,State,Zipcode\n"
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end

## this method will track header rows so if one is added or deleted in the future we can easily change the method
# lines = File.readlines "event_attendees.csv"
# row_index = 0
# lines.each do |line|
#   row_index = row_index + 1
#   next if row_index == 1
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end

## above method has a built-in method from ruby "each_with_index"
# lines = File.readlines "event_attendees.csv"
# lines.each_with_index do |line,index|
#   next if index == 0
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end

## makes a seperate method for formatting zipcodes
# def clean_zipcode(zipcode)
#   if zipcode.nil?
#     "00000"
#   elsif zipcode.length < 5
#     zipcode.rjust(5,"0")
#   elsif zipcode.length > 5
#     zipcode[0..4]
#   else
#     zipcode
#   end
# end

## refactored version of zipcode method
def clean_zipcode(zipcode)
  zipcode.to_s.rjust(5,"0")[0..4]
end
## this uses built-in parser method for headers for ruby
contents = CSV.open "event_attendees.csv", headers: true
contents.each do |row|
  #name = row[2]
  name = row[:first_name]
  zipcode = clean_zipcode(row[:zipcode])
  puts "#{name} #{zipcode}"
end