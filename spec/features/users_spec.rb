require 'spec_helper'
require 'rails_helper'

include OwnTestHelper

RSpec.describe User, type: :model do
  before :each do
    FactoryGirl.create :user
  end

  describe "who has signed up" do
    it "can log in with correct credentials" do 
      sign_in(username:"matti", password:"Sal1s")
      expect(page).to have_content 'Welcome back!'
      expect(page).to have_content "matti"
    end

    it "can't login with an incorrect password" do
      sign_in(username:"matti", password:"vaara")
      expect(page).to have_content 'Username and/or password mismatch.'
    end
  end
end
