module Blackjack
  class Dealer < Player

    def take_card?
      if self.points <= 10 && self.cards.count < 3
        return true
      end
      false
    end
  end
end