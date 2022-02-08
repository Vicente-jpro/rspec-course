class Card
    attr_reader :rank, :suit, :number

    def initialize(rank, suit, number)
      @rank = rank
      @suit = suit
      @number = number
    end
end

RSpec.describe 'Card' do 
   #variable memorization it is Layz
   let(:card){Card.new('Ace','Spades', 4)}   

    it 'has a rank' do 
      expect(card.rank).to eq('Ace')
    end

    it 'has a suit' do 
      expect(card.suit).to eq('Spades')
    end

    it 'has a number' do 
      expect(card.number).to eq(4)
    end

    it 'has a error message' do 
      card_type = "Spades" 
      expect(card.suit).to eq(card_type), "It expected #{card_type}, but got #{card.suit}"
    end

end