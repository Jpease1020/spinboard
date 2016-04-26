require "rails_helper"

RSpec.describe "User changes link read status", type: :feature do
  scenario "unread link changes status to read when read button is clicked", js: true do

    user = User.create!(email_address: 'justin@email.com', password: 'pass')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    link1 = Link.create!(title: "title1", url: "http://1.com", user_id: user.id)
    link2 = Link.create!(title: "title2", url: "http://2.com", user_id: user.id)
    link3 = Link.create!(title: "title3", url: "http://3.com", user_id: user.id)
    link4 = Link.create!(title: "title4", url: "http://4.com", user_id: user.id, read: true)
    link5 = Link.create!(title: "title5", url: "http://5.com", user_id: user.id, read: true)
    link6 = Link.create!(title: "title6", url: "http://6.com", user_id: user.id, read: true)

    visit links_path

    click_on ("Show Read/Unread Links")
    visit links_path
    expect(page).not_to have_content('false')

    # click_on ("Show Read/Unread Links")
    # visit links_path
    # expect(page).not_to have_content('false')

  end
end
