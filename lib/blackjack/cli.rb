module Blackjack
  module Cli

    private

    def player_action
      puts <<~ACTIONS
      
        [1] - Pass
        [2] - Add card
        [3] - Open cards

        ----------------------
      ACTIONS
      print('Choice your action: ')
      action = gets.chomp.to_i

      case action
        when 1
          puts('You skipped yours turn')
        when 2
          if player.cards.count < 3
            puts('You added card')
            player.cards << deck.hand_out
          else
            puts('You can\'t add card. 3 cards is limit')
          end
        when 3
          puts('You opened cards')
          return true
        else
          puts('Incorrect choice')
      end

      false
    end

    def player_stats
      puts <<~STATS
      
      ---STATS----------------      
      Name: #{player.name}
      Cards: #{player.cards.join(',')}
      Points: #{player.points}
      Cash: $#{player.money}
      ------------------------

      STATS
    end

    def print_result
      puts <<~RESULT
        
      ---RESULT---------------
      You: points - #{player.points}, cards: #{player.cards.join(',')}
      Dealer: points - #{dealer.points}, cards: #{dealer.cards.join(',')}
      ------------------------

      RESULT
    end
  end
end


