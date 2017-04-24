module Blackjack
  class Player
    attr_reader :name, :money

    attr_accessor :cards

    MONEY_ON_START = 100

    def initialize(name)
      @name = name
      @cards = []
      @money = MONEY_ON_START
    end

    def points
      @cards.map { |x| x.point }.reduce(:+)
    end

    def give_money(bet)
      @money -= bet
      bet
    end
  end
end