module Blackjack
  class Card
    attr_reader :suit, :rank

    def initialize(suit, rank)
      @suit = suit
      @rank = rank
    end

    def to_s
      "#{suit}#{rank}"
    end

    def point
      return rank.to_i if ('2'..'10').include?(rank)
      10 if %w[J Q K].include?(rank)
    end
  end
end