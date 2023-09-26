class Attendee
  attr_reader :id, :first_name, :last_name, :zipcode, :name
  def initialize (id, first_name, last_name, zipcode)
    @id = id
    @name = first_name + " " + last_name
    # @first_name = first_name
    # @last_name = last_name
    @zipcode = clean_zipcode(zipcode)
  end

  # def name
  #   name = @first_name + " " + @last_name
  # end

  def clean_zipcode(zipcode)
    if zipcode.nil?
      "00000"
    elsif zipcode.length < 5
      zipcode.rjust(5,"0")
    elsif zipcode.length > 5
      zipcode[0..4]
    else
      zipcode
    end
  end
end