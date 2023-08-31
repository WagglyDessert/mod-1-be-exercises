require './unicorn'

unicorn_1 = Unicorn.new('Hank', 'Tan')
unicorn_2 = Unicorn.new('Stout', 'Black')

unicorn_1.add_power('surfing')

require 'pry'; binding.pry