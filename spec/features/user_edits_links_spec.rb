require "rails_helper"

RSpec.describe "User edits links", type: :feature do
  scenario "user chnages link title", js: true do

    user = User.create!(email_address: 'justin@email.com', password: 'pass')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    link = Link.create!(title: "a title", url: "http://url.com", user_id: user.id)
    visit links_path

    el = find(:xpath, "//span[@contenteditable='true' and @class='title']")
    el.set("A new title")
    el.native.send_keys(:return)

    visit links_path

    expect(page).to have_content("A new title")
  end

  scenario "user changes link url", js: true do

    user = User.create!(email_address: 'justin@email.com', password: 'pass')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    link = Link.create!(title: "a title", url: "http://url.com", user_id: user.id)
    visit links_path

    el = find(:xpath, "//span[@contenteditable='true' and @class='url']")
    el.set("http://anewurl.com")
    el.native.send_keys(:return)

    visit links_path

    expect(page).to have_content("http://anewurl.com")
  end

  scenario "tries to edit the link url with an invlaid url", js: true do

    user = User.create!(email_address: 'justin@email.com', password: 'pass')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    link = Link.create!(title: "a title", url: "http://url.com", user_id: user.id)
    visit links_path

    el = find(:xpath, "//span[@contenteditable='true' and @class='url']")
    el.set("newurl.com")
    el.native.send_keys(:return)

    visit links_path

    expect(page).to have_content("http://url.com")
  end
end
