require 'rails_helper'

RSpec.describe User do
  describe "Validations" do
    it "is valid with an email, password and unique username" do
      user = User.new(username: 'Person', email: 'person@person.com', password: 'password')
      expect(user).to be_valid
    end

    it "is invalid without an email" do
      user = User.new(username: 'Person', password: 'password')
      expect(user).to be_invalid
    end

    it "is invalid without a username" do
      user = User.new(email: 'person@person.com', password: "password")
      expect(user).to be_invalid
    end

    it "is invalid without a password" do
      user = User.new(username: 'Person', email: 'person@person.com')
      expect(user).to be_invalid
    end
  end

  describe "User Roles" do
    it "can be created as an admin" do
    user = User.create(username: "Dude", email: "dude@dude.com", password: "password", role: "admin")

    expect(user.role).to eq("admin")
    expect(user.admin?).to be_truthy
  end

    it "can be created as a default user" do
      user = User.create(username: "Dude", email: "dude@dude.com", password: "password")

      expect(user.role).to eq("default")
      expect(user.default?).to be_truthy
    end
  end
end