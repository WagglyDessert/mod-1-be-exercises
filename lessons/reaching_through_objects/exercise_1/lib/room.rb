class Room
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

# A `Room` has a `name` (e.g. `"bathroom"`) and a way to read that data.
#   bathroom = Room.new("bathroom")
#   # => #<Room:0x000... @name="bathroom">

#   bathroom.name
#   # => "bathroom"