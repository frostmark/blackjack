module Blackjack
  class Bank
    attr_reader :money

    MONEY_ON_START = 0
    BET = 10

    def initialize
      @money = MONEY_ON_START
    end

    def bet
      BET
    end

    def get_money(player)
      @money += player.give_money(bet)
    end

    def give_money
      @money, m = 0, money

      m
    end

    private

    def player_has_money?(player)
      if player.money < bet
        return false
      end

      true
    end
  end
end