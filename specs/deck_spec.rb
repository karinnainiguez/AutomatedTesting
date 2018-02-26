

require_relative 'spec_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases

  describe 'Deck instance' do
    it "can be created" do
      deck1 = Deck.new
    end

    it "has 52 Card objects as attributes" do
      deck2 = Deck.new
      result = deck2.cards
      result.must_be_kind_of Array
      result.length.must_equal 52
      result[5].must_be_kind_of Card
    end
  end

  describe '#shuffle' do
    it 'can be called' do
      deck3 = Deck.new
      deck3.shuffle
    end
  end

  describe '#draw' do
    it 'returns card' do
      deck4 = Deck.new
      result = deck4.draw
      result.must_be_kind_of Card
    end

    it 'removes Card from Deck' do
      deck5 = Deck.new
      deck5.draw
      deck5.draw
      deck5.draw
      deck5.count.must_equal 49
    end
  end

  describe '#count' do

    it 'returns the number of cards in Deck' do
      deck6 = Deck.new
      result = deck6.count
      result.must_equal 52
    end


    it 'returns updated number of cards after draw' do
      deck7 = Deck.new
      deck7.draw
      deck7.draw
      result = deck7.count
      result.must_equal 50
    end
  end


end
