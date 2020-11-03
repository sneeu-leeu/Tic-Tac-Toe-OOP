require_relative '../lib/board'
RSpec.describe Board do
  let(:board) { Board.new }
  let(:valid_move) { 8 }
  let(:invalid_move) { 12 }
  let(:display_board) { [1, 2, 3, 4, 5, 6, 7, 8, 9] }

  describe '#is_valid?' do
    it 'Should check if the selected move is valid' do
      expect(board.is_valid?(valid_move)).to be(true)
    end
    it 'Should check if the selected move is not invalid' do
      expect(board.is_valid?(valid_move)).to_not be(false)
    end
    it 'Should check if the selected move is invalid' do
      expect(board.is_valid?(invalid_move)).to be(false)
    end
  end

  describe '#update_board' do
    it 'Should update players move in the board' do
      expect(board.update_board(8, 'X')).to eql(display_board[7] = 'X')
    end
    it 'Should not update players move in the board if invalid' do
      expect(board.update_board(11, 'X')).to eql(display_board[11] = 'X')
    end
  end
end
