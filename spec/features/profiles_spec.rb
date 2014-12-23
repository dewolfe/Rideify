require 'rails_helper'

RSpec.describe "Profiles", :type => :request do
  describe "GET /profiles" do
    it "works! (now write some real specs)" do

    end
  end

  describe "POST /profiles" do
    it "creates a new profile" do
      user=FactoryGirl.create(:user)
      visit 'users/sign_in'
      fill_in 'Email', with: "test@nada.com"
      fill_in 'user_password', with: 'abc12345678'
      click_button 'Log in'
      visit 'profiles/new'

    end
  end
end
