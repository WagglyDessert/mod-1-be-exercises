class Vampire

    attr_reader :name, :thirsty, :pet
    def initialize(name, pet = 'bat')
        @name = name
        @thirsty = true
        @pet = pet
    end

    def drink
        return @thirsty = false
    end
end
