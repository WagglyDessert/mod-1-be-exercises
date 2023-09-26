require "csv"
puts "EventManager initialized."

# contents = File.read "./data/event_attendees.csv"
# lines = File.readlines "./data/event_attendees.csv"
def clean_zipcode(zipcode)
  #zipcode = row[:zipcode]
  # if the zip is missing assume we want "00000"
  if zipcode.nil?
    "00000"
  # if zip is exactly five digits, assume it is ok
  elsif zipcode.length == 5
    zipcode
  # if zip is more than five digits, truncate to the first five digits
  elsif zipcode.length > 5
    zipcode[0..4]
  # if zip is less than five digits, and zeroes to the front until it becomes five digits
  else zipcode.length < 5
    zipcode.rjust(5, "0")[0..4]
  end
end

contents = CSV.open "./data/event_attendees.csv", headers: true, header_converters: :symbol
contents.each do |row|
  name = row[:first_name]
  zipcode = clean_zipcode(row[:zipcode])
  puts "#{name} #{zipcode}"
end


  


#   #zipcode = row[:zipcode]
#   # if the zip is missing assume we want "00000"
#   if row[:zipcode].nil?
#     zipcode = "00000"
#   # if zip is exactly five digits, assume it is ok
#   elsif row[:zipcode].length == 5
#     zipcode = row[:zipcode]
#   # if zip is more than five digits, truncate to the first five digits
#   elsif row[:zipcode].length > 5
#     zipcode = row[:zipcode][0..4]
#   # if zip is less than five digits, and zeroes to the front until it becomes five digits
#   else row[:zipcode].length < 5
#     zipcode = row[:zipcode].rjust(5, "0")
#   end
# end