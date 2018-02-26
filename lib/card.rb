
# card.rb
class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
    valid_suits = [:hearts, :spades, :clubs, :diamonds]
    valid_values = (1..13)
    unless valid_suits.include?(suit) && valid_values.include?(value)
      raise ArgumentError.new
    end
  end

  def to_s
    return "#{name} of #{suit.to_s}"
  end

  def name
    case value
    when 11
      name = "Jack"
    when 12
      name = "Queen"
    when 13
      name = "King"
    else
      name = value
    end
  end

end
