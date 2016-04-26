require 'rails_helper'

RSpec.describe User, type: :model do

  describe "user" do
    it "can create an user with valid attributes" do
      assert_equal(0, User.count)
      user = User.create!(email_address: "justin@email.com", password: "password")

      assert_equal(1, User.count)
      expect(user.email_address).to eq("justin@email.com")
    end

    it "does not create a user with email address already taken" do
      user = User.create!(email_address: "justin@email.com", password: "password")
      assert_equal(1, User.count)
      user2 = User.create(email_address: "justin@email.com", password: "password")
      assert_equal(1, User.count)
    end
  end

end
