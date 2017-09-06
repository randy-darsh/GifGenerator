require 'rails_helper'

RSpec.describe User do
  describe 'Validations' do
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

    it 'is in valid without a password' do
      user = User.new(username: 'Person', email: 'person@person.com')
      expect(user).to be_invalid
    end
  end
end
