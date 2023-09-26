# ./lib/orderable.rb

module Orderable
  def confirmation(thing)
    "You got #{thing}."
  end

  def review
    "Please rate your order within 30 days."
  end

  def delivery(thing)
    "Your #{thing}."
  end
end
