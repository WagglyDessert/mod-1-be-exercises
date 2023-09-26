class Apartment
  #attr_accessor :rent
  attr_reader :rooms
  def initialize
    @rent = false
    @rooms = []
  end

  # An `Apartment` can state whether or not it is currently `rented`, by the behavior called `is_rented?`. To do this, the `Apartment` should respond to the behavior `rent`.
#   ```
#     apartment = Apartment.new
#     # => #<Apartment:0x000... @rented=false>
  
#     apartment.is_rented?
#     # => false
  def is_rented?
    @rent
  end

#     apartment.rent
#     apartment.is_rented?
#     # => true
  def rent
    @rent = true
  end

#   An `Apartment` can have up to 4 `Room`s, and can list those `Room`s by name, alphabetically.
#     apartment = Apartment.new
#     # => #<Apartment:0x000... @rented=false>
  
#     bathroom = Room.new("bathroom")
  
#     apartment.add_room(bathroom)
#     apartment.add_room(Room.new("laundry"))
#     apartment.add_room(Room.new("kitchen"))
#     apartment.add_room(Room.new("bedroom"))
  def add_room(room)
    @rooms << room
    # if @rooms.count > 4
    #   return "Can't have any more rooms!"
    # end
  end

  def list_rooms_by_name_alphabetically
    list = @rooms.map do |room|
      room.name
    end
    list.sort
    list
  end

end