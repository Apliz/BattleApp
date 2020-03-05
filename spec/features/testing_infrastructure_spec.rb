feature "homepage" do
  # scenario 'can run app and check page contents' do
  #   visit('/home')
  #   expect(page).to have_content("Hello battle!")
  # end
  # user1_double = { double :name, name: "Anton"}

  scenario 'can add names to a field' do
    sign_in_and_play()
    expect(page).to have_content("Anton Vs Lila")
  end
end