require 'rails_helper'

RSpec.feature "guest visits home page" do
	scenario "clicks link to create account" do
    visit root_path
    click_on "Sign Up"
    expect(current_path).to eq("/users/new")

    fill_in "Email", with: "email@email.com"
    fill_in "Password", with: "password"
    fill_in "Confirm password", with: "password"
    click_on "Create"
    expect(current_path).to eq(dashboard_path)
    expect(page).to have_content("Hi user")
  end

	scenario "account creation fails without unique email" do
    user = User.create(email: "a@email.com", password_digest: "password")
		visit root_path
    click_on "Sign Up"
    expect(current_path).to eq("/users/new")

    fill_in "Email", with: user.email
    fill_in "Password", with: "password"
    fill_in "Confirm password", with: "password"
    click_on "Create"

    expect(current_path).to eq(new_user_path)
  end

end
