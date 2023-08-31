class Unicorn
    attr_reader :name, :color, :horn, :magical_powers
    def initialize(name, color = 'blue')
        @name = name
        @color = color
        @name == 'Hank' ? @horn = true : @horn = false
        @magical_powers = []
    end

    def add_power(power)
        @magical_powers << power
    end
end

