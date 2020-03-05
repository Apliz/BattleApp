require 'player'

describe Player do
  it 'should return its name' do
    expect(Player.new("Anton")).to have_attributes(:name => "Anton")
  end
end