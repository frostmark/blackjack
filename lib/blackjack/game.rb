module Blackjack
  class Game
    attr_reader :player

    def initialize
      print 'Введите ваше имя: '
      player_name = gets.chomp

      @player = Player.new(player_name)
      @deck = Deck.new
    end

    def run
      loop do

      end
    end
  end
end