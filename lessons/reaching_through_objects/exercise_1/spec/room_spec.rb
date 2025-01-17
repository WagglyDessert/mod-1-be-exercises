require 'rspec'
require './lib/room'

RSpec.describe Room do
  it 'is a room' do
    room = Room.new('bathroom')

    expect(room).to be_a(Room)
  end

  it 'has a name' do
    room = Room.new('bathroom')

    expect(room.name).to eq('bathroom')
  end

end

