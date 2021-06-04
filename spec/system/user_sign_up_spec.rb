require 'rails_helper'

RSpec.feature 'user signs up' do
  scenario 'using an unique email' do
    visit new_user_registration_path
    fill_in 'user_email', with: 'beau@foo.com'
    fill_in 'user_password', with: 'redfred'
    fill_in 'user_password_confirmation', with: 'redfred'
    click_button 'Sign up'

    expect(page).to have_css 'h4', text: "signed in as beau@foo.com"

  end
end
