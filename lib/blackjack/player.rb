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
      @cards.map do |x|
        if x.point.is_a?(Array)
          11
        else
          x.point
        end

      end.reduce(:+)
    end

    def give_money(bet)
      @money -= bet
      bet
    end

    def get_money(bank)
      @money += bank.give_money
    end

    def has_money?
      return false if self.money < Bank::BET
      true
    end
  end
end