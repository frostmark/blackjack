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
  end
end