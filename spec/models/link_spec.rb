require 'rails_helper'

RSpec.describe Link, type: :model do
  describe "link" do
    it "can create an link with valid attributes" do
      link = Link.create(title: "This is the title if the link", url: "http://something.com")

      expect(link.title).to eq("This is the title if the link")
      expect(link.read).to eq(false)
    end

    it "default read status of the link is false" do
      link = Link.create(title: "A new Link", read: false)

      expect(link.read).to eq(false)
    end

    it "does not create a link with invalid url"
      assert_equal(0, Link.count)
      link = Link.create(title: "This is the title if the link", url: "something.com")
      assert_equal(0, Link.count)
    end

  end
end
