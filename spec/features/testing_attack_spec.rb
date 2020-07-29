feature 'attack' do
  scenario 'can deal damage' do
    sign_in_and_play()
    click_button 'Attack!'
    expect(page).to have_content('Player 2 has been damaged!')
  end
end