require_relative '../lib/winner'

RSpec.describe Winner do
  let(:win_choices) { Winner.new([1, 2, 3]) }
  let(:loss_choices) { Winner.new([1, 2, 4]) }
  let(:WINNING_POS) do
    [[1, 2, 3], [4, 5, 6],
     [7, 8, 9], [1, 4, 7],
     [2, 5, 8], [3, 6, 9],
     [1, 5, 9], [3, 5, 7]].freeze
  end
  describe '#real_win?' do
    it 'Should let the player win if they have the correct combo' do
      expect(win_choices.real_win?).to be(true)
    end
    it 'Should not let the player not win if they have the correct combo' do
      expect(win_choices.real_win?).to_not be(false)
    end
    it 'Should not let the player win if they have the wrong combo' do
      expect(loss_choices.real_win?).to be(false)
    end
    it 'Should not let the player not win if they have the right combo' do
      expect(loss_choices.real_win?).to_not be(true)
    end
  end
end
