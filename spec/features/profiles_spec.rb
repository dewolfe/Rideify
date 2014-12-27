require 'rails_helper'

describe "Profiles" do
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
      expect(page).to have_content 'Success'
      visit 'profiles/new'
      fill_in 'start_address', with:'53 Chemin Fox Run, Wakefield, QC, Canada'
      fill_in 'dest_address', with: '116 Albert Street, Ottawa, ON, Canada'
      check 'profile_have_car'
      select '4',from:'profile_car_total_seats'
      click_button 'Create Profile'
      expect(page).to have_content 'Success'
    end
  end
end
