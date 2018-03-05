
require_relative 'spec_helper'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          card.must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      proc {Card.new(0, :diamonds)}.must_raise ArgumentError
      proc {Card.new(14, :diamonds)}.must_raise ArgumentError
      proc {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do

    it "to_s returns a readable String value logically for values 2-10" do
      # Test to ensure that to_s works for cards values 2-10
      # for example:  "2 of diamonds"
      card1 = Card.new(2,:diamonds)
      result = card1.to_s
      result.must_equal "2 of diamonds"
    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      # Test to ensure that to_s works for cards values 1, and 11-13
      # For example: "Queen of hearts"
      card2 = Card.new(11,:hearts)
      result = card2.to_s
      result.must_equal "Jack of hearts"

      card2 = Card.new(13,:hearts)
      result = card2.to_s
      result.must_equal "King of hearts"

      card3 = Card.new(1,:hearts)
      result = card3.to_s
      result.must_equal "Ace of hearts"

      card4 = Card.new(12,:hearts)
      result = card4.to_s
      result.must_equal "Queen of hearts"



    end
  end

  describe "Reader methods" do

    it "Can retrieve the value of the card using a `.value`." do
      # ensure that `.value works as expected`
      card5 = Card.new(8, :clubs)
      result = card5.value
      result.must_equal 8
    end

    it "Can retrieve the value of the card using a `.suit`." do
      # ensure that `.suit works as expected returning the symbol of the suit`
      card6 = Card.new(5, :spades)
      result = card6.suit
      result.must_equal :spades
    end
  end

end
