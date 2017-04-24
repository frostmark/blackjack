module Blackjack
  class Game
    attr_reader :player, :dealer, :bank

    def initialize
      create_deck
      create_players
      create_bank
    end

    def run
      loop do
        start_round
        puts "In bank: $#{bank.money}"
        loop do
          print 'Your choice: '

        end
      end
    end

    private

    def create_deck
      @deck = Deck.new
    end

    def create_players
      print 'Введите ваше имя: '
      player_name = gets.chomp

      @player = Player.new(player_name)
      @dealer = Dealer.new('Dealer')

      2.times do
        @player.cards << @deck.hand_out
        @dealer.cards << @deck.hand_out
      end
    end

    def start_round
      debugger
      bank.get_money(player)
      bank.get_money(dealer)
    end

    def create_bank
      @bank = Bank.new
    end

    def player_choice

    end
  end
end