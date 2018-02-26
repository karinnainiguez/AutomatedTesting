
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
    selected = @cards.sample
    @cards.delete(selected)
    return selected
  end

  def shuffle
    # shuffles the deck
  end

  def count
    number = @cards.length
    return number
  end
end
