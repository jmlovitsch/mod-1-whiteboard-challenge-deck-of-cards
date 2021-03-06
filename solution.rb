require 'pry'

class Deck

    attr_accessor :cards

    def initialize
        ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
        @cards = []
        suits.each do |suit|
            ranks.each do |rank|
                @cards << Card.new(suit, rank)
            end
        end

    end

    def choose_card
        @cards.delete(@cards.sample)
    end

end


class Card


    attr_accessor :suit, :rank

    @@all = []

    def initialize(suit, rank)
        @suit = suit
        @rank = rank
        @@all << self
    end

    def self.all
        @@all
    end

end
