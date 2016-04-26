require "rails_helper"

RSpec.describe "User changes link read status", type: :feature do
  scenario "unread link changes status to read when read button is clicked", js: true do

    user = User.create!(email_address: 'justin@email.com', password: 'pass')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    link = Link.create!(title: "a title", url: "http://url.com", user_id: user.id)
    visit links_path

    click_on ("Mark as Read/Unread")
    visit links_path
    expect(page).to have_content('true')

    click_on ("Mark as Read/Unread")
    expect(page).to have_content('false')
  end
end
