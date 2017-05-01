require_relative('cli')

module Blackjack
  class Game
    include Cli

    attr_reader :player, :dealer, :bank, :deck

    def initialize
      create_deck
      create_players
      create_bank
    end

    def run
      loop do
        puts 'New turn ------>'
        start_round
        give_out_cards
        puts "In bank: $#{bank.money}"
        loop do
          player_stats

          if player_action || is_end?
            result
            break
          end
        end

        print 'Enter "no" if you want to end this game: '
        exit if gets.chomp == 'no'
      end
    end

    private

    def create_deck
      @deck = Deck.new
    end

    def create_players
      print 'Your name: '
      player_name = gets.chomp

      @player = Player.new(player_name)
      @dealer = Dealer.new('Dealer')

      give_out_cards
    end

    def give_out_cards
      @player.cards = []
      @dealer.cards = []
      2.times do
        @player.cards << @deck.hand_out
        @dealer.cards << @deck.hand_out
      end
    end

    def start_round
      unless player.has_money?
        puts 'You not have money'
        exit
      end

      unless dealer.has_money?
        puts 'Dealer not have money'
        exit
      end

      bank.get_money(player)
      bank.get_money(dealer)
    end

    def create_bank
      @bank = Bank.new
    end

    def result
      print_result

      if player.points > dealer.points
        player.get_money(bank)
        puts('You win')
      else
        dealer.get_money(bank)
        puts('Dealer win')
      end
    end

    def is_end?
      if player.cards.count == 3 && dealer.cards.count == 3
        return true
      end

      false
    end
  end
end