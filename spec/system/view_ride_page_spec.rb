require 'rails_helper'

RSpec.feature 'visit ride page' do
  scenario 'see the ride details' do
    user = create(:user)
    create(:ride, title: 'Last ride', date: '2021-07-21', user_id: user.id)
    sign_in user
    visit root_path
    click_on 'Last ride' 
    expect(page).to have_content 'Last ride'
    expect(page).to have_content '2021-07-21'

  end
end 
