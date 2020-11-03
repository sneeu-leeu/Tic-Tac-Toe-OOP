require './lib/board'
RSpec.describe Board do
  let(:board) { Board.new }
  let(:valid_move) { 8 }
  let(:invalid_move) { 12 }
  let(:move1) { [8, 'X'] }
  describe '#is_valid?' do
    it 'Should check if the selected move is valid' do
      expect(board.is_valid?(valid_move)).to be(true)
    end
    it 'Should check if the selected move is invalid' do
      expect(board.is_valid?(invalid_move)).to be(false)
    end
  end
end
