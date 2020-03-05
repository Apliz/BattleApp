feature 'attack' do
  scenario 'can deal damage' do
    sign_in_and_play()
    click_button 'ATTACK!'
    expect(page).to have_content('Player 2 has been damaged!')
  end
end