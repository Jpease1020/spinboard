require "rails_helper"

RSpec.describe "User filters links by title alphabetically", type: :feature do
  xscenario "clicks link Sort Alphabetically", js: true do

    user = User.create!(email_address: 'justin@email.com', password: 'pass')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    link1 = Link.create!(title: "a", url: "http://1.com", user_id: user.id)
    link2 = Link.create!(title: "b", url: "http://2.com", user_id: user.id)
    link3 = Link.create!(title: "c", url: "http://3.com", user_id: user.id)
    link4 = Link.create!(title: "d", url: "http://4.com", user_id: user.id, read: true)
    link5 = Link.create!(title: "e", url: "http://5.com", user_id: user.id, read: true)
    link6 = Link.create!(title: "f", url: "http://6.com", user_id: user.id, read: true)

    visit links_path

    click_on("Sort Alphabetically")
  end
end
