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
      return 10 if %w[J Q K].include?(rank)
      return [1, 11] if rank == 'A'
    end

    def ace?
      point.is_a?(Array)
    end
  end
end