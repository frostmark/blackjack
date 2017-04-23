module Blackjack
  class Bank
    attr_reader :player, :dealer

    MONEY_ON_START = 100

    def initialize(player, dealer)
      @player = player
      @dealer = dealer
    end
  end
end