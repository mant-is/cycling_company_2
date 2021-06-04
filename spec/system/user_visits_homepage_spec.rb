require 'rails_helper'

RSpec.feature 'user visits homepage' do
  scenario 'successfully' do
    visit root_path 
    expect(page).to have_css 'h3', text: 'Welcome to Cycling Company'
  end
end

