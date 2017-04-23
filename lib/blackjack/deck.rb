module Blackjack
  class Deck
    attr_reader :cards

    SUITS = %w[♠ ♥ ♦ ♣]
    RANKS = %w[A 2 3 4 5 6 7 8 9 10 J Q K]

    def initialize
      create
    end

    private

    def create
      @cards = []
      SUITS.each do |suit|
        RANKS.each do |rank|
          @cards << Card.new(suit, rank)
        end
      end
    end
  end
end