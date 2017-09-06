require 'rails_helper'

RSpec.describe "When user visits new user path" do
  it 'they can create a new account' do
    visit new_user_path

    fill_in "user[username]", with: 'Whatever'
    fill_in "user[email]", with: 'whatever@whatever.com'
    fill_in "user[password]", with: 'password'

    click_on 'Create Account'

    expect(page).to have_content("Welcome, Whatever")
  end
end
