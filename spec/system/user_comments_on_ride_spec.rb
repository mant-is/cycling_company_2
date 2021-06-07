require 'rails_helper'

RSpec.feature 'User leaves a comment on a ride' do
  scenario 'as the owner' do
    user = create :user
    ride = create :ride, user_id: user.id 
    
    sign_in user
    visit root_path
    click_on ride.title
    fill_in 'comment_body', with: 'Henlo world'
    click_on 'Add comment'
    expect(page).to have_css 'tr#comment td', text: 'Henlo world'    
  end
end
