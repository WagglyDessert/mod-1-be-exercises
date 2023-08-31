class Wizard

  attr_reader :name
  attr_accessor :bearded

  def initialize(name, bearded = {bearded: true})
    @name = name
    @bearded = bearded[:bearded] #this style will call on bearded hash which defaults to true
  end

  def bearded?
    @bearded
  end

  def incantation(x)
    "sudo #{x}"
  end

end
