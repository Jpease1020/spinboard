require "rails_helper"

RSpec.describe "User adds a new link", type: :feature do
  scenario "link is created, and added to the database and sees the link displayed in the page" do
    user = User.create(email_address: 'justin@email.com', password: 'pass')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit root_path
    visit links_path
    fill_in "Title", with: "My new link title"
    fill_in "Url", with: "https://thing.com"

    click_on "Create Link"

    expect(Link.count).to eq(1)
    expect(page).to have_content("My new link title")
  end
end
