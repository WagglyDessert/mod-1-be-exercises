require 'rspec'
require './lib/room'
require './lib/apartment'

RSpec.describe Apartment do
  it 'is an apartment' do
    apartment = Apartment.new

    expect(apartment).to be_a(Apartment)
  end

  it 'is rented' do
    apartment = Apartment.new

    expect(apartment.is_rented?).to eq(false)
  end

  it 'is rented' do
    apartment = Apartment.new
    apartment.rent

    expect(apartment.is_rented?).to eq(true)
  end

  it 'has up to four rooms' do
    apartment = Apartment.new
    bathroom = Room.new('bathroom')
    apartment.add_room(bathroom)
    laundry = Room.new('laundry')
    apartment.add_room(laundry)
    kitchen = Room.new('kitchen')
    apartment.add_room(kitchen)
    bedroom = Room.new('bedroom')
    apartment.add_room(bedroom)
    #require 'pry'; binding.pry
    expect(apartment.list_rooms_by_name_alphabetically).to eq('bathroom', 'bedroom', 'kitchen', 'laundry')
  end

end
