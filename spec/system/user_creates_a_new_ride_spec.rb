require 'rails_helper'

RSpec.configure do |config|
  config.include Devise::Test::IntegrationHelpers, type: :feature
end

RSpec.feature 'User creates a new ride' do 
  scenario 'it is saved to the database' do
    
    bill = create(:user)
    ride = create(:ride, user_id: bill.id)
    sign_in bill

    visit root_path
    expect(page).to have_css 'a', text: ride.title
  end
end


