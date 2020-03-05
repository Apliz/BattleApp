def sign_in_and_play
  visit('/home')
  fill_in :Player1, with: 'Anton'
  fill_in :Player2, with: 'Lila' 
  click_button 'Submit'
end