
# deck.rb

require_relative 'card'
class Deck

  CARDS_PER_SUIT = 13
  SUITS = [:hearts, :spades, :clubs, :diamonds]

  attr_reader :cards

  def initialize
    @cards = []
    self.fill
  end

  def fill
    SUITS.each do |suit|
      CARDS_PER_SUIT.times do |i|
        value = i+1
        new_card = Card.new(value,suit)
        @cards << new_card
      end
    end
  end

  def draw
    raise StandardError.new('Deck is empty') if @cards.empty?
    return @cards.pop
  end

  def shuffle
    @cards.shuffle!
  end

  def count
    @cards.length
  end
end
