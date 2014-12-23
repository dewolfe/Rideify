require 'rails_helper'

describe "UserLogin" do
  it "logs user in with correct username/password" do
    user=FactoryGirl.create(:user)
    visit 'users/sign_in'
    fill_in 'Email', with: "test@nada.com"
    fill_in 'user_password', with: 'abc12345678'
    click_button 'Log in'
    expect(page.status_code).to be(200)
   end
end