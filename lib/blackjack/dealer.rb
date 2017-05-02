module Blackjack
  class Dealer < Player

    def take_card?
      points <= 10 && cards.count < 3
    end
  end
end