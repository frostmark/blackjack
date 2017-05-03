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
      @cards.map do |card|
        if card.ace?
          current_points = @cards.select{|card| not card.ace?}.map(&:point).reduce(:+)
          if current_points <= 10
            card.point[1]
          else
            card.point[0]
          end
        else
          card.point
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
      money > Bank::BET
    end
  end
end