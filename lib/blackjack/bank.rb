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
      @money, prize = 0, money

      prize
    end

    private

    def player_has_money?(player)
      !(player.money < bet)
    end
  end
end