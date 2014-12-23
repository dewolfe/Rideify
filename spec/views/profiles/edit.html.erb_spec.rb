require 'rails_helper'

RSpec.describe "profiles/edit", :type => :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :start_address => "MyString",
      :destination_address => "MyString",
      :have_car => false
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input#profile_start_address[name=?]", "profile[start_address]"

      assert_select "input#profile_destination_address[name=?]", "profile[destination_address]"

      assert_select "input#profile_have_car[name=?]", "profile[have_car]"
    end
  end
end
