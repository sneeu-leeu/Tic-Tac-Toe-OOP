require_relative '../lib/player'

RSpec.describe Players do
  let(:start) { Players.new('Stephan', 'X', []) }
  describe 'Player' do
    it 'Should return the name of the player' do
      expect(start.name).to eql('Stephan')
    end
    it 'Should return the symbol of the player' do
      expect(start.sign).to eql('X')
    end
    it 'Should return an empty array' do
      expect(start.choice).to eql([])
    end
    it 'Should not return a filled array' do
      expect(start.choice).not_to eql([Integer])
    end
  end
end
