require 'rails_helper'

RSpec.feature 'User deletes a ride' do
  scenario 'it is removed from the database' do
    user = create :user
    ride = create :ride, user_id: user.id
    sign_in user
    visit root_path
    click_link ride.title
    click_link 'Delete ride'
    expect(page).to have_content "#{ ride.title } deleted successfully"
  end
end
