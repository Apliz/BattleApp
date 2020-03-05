feature 'hitpoints' do
  scenario 'can show @player2 hitpoints' do
    sign_in_and_play()
    expect(page).to have_content("Lila 100HP")
  end
end