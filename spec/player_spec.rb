require 'player'


describe Player do
  it 'should return its name' do
    @player = Player.new("Anton")
    expect(@player).to have_attributes(:name => "Anton")
  end
end

describe 'attack' do
  it 'should reduce hit points by 10' do
    @player = Player.new("Anton")
    @player.attack()
    expect(@player.hit_points).to eq(90)
  end
end