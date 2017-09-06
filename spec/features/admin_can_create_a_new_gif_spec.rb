require 'rails_helper'

RSpec.describe "When an admin visits the new admin gif page" do
  it 'can add a new gif' do
    # As an Admin

    # When I visit /admin/gifs/new
    visit new_admin_gif_path
    # and I enter a word into the seach field
    fill_in 'search', with: 'cat'
    # and click "generate gif"
    click_on 'Generate Gif'
    # and the path will be "/admin/gifs"
    expect_route.to_be admin_gifs_path
    # i will see the new gif generated on the page

    # a new gif is generated and saved to the datebase

    # and its category is the search word used to find the gif
  end
end
