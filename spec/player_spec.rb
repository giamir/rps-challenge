require 'player'

describe Player do
  let(:player) { described_class.new 'Jon'}
  it 'has a player name after initialization' do
    expect(player.name).to eq 'Jon'
  end
  describe '#is_computer?' do
    it 'returns false by default' do
      expect(player.is_computer?).to be false
    end
  end
  describe '#assign_element' do
    it 'set the element chosen by the player' do
      player.assign_element('rock')
      expect(player.element).to eq 'rock'
    end
  end
end
