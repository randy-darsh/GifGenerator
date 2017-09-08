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
    expect(page).to have_content("Gifs")
    # a new gif is generated and saved to the datebase

    # and its category is the search word used to find the gif
  end
end

# RSpec.feature "When a user visits the categories page" do
#   context "as an admin" do
#     scenario "they can see a list of all categories" do
#       admin = User.create(username: "Dude", password: "password", role: "admin")
#       allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

#       visit admin_categories_path
#       expect(page).to have_content("Admin Categories")
#     end
#   end

#   context "as a user" do
#     scenario "they cannot see a list of all categories" do
#       default_user = User.create(username: "Something", password: "password")
#       allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(default_user)

#       visit admin_categories_path
#       expect(page).to_not have_content("Admin Categories")
#     end
#   end
# end
