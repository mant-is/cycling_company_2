require 'rails_helper'

RSpec.configure do |config|
  config.include Devise::Test::IntegrationHelpers, type: :feature
end

RSpec.feature 'User creates a new ride' do 
  scenario 'it is saved to the database' do
    
    bill = create(:user)
    sign_in bill
    visit root_path
    click_link 'Add new ride'
    fill_in 'Title', with: 'Sunset Ride'
    fill_in 'Date', with: '2021-06-30'
    click_on 'Submit'
    expect(page).to have_css 'a', text: 'Sunset Ride'
  end
end


