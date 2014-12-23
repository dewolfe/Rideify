require 'rails_helper'

RSpec.describe "profiles/new", :type => :view do
  before(:each) do
    assign(:profile, Profile.new(
      :start_address => "MyString",
      :destination_address => "MyString",
      :have_car => false
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input#profile_start_address[name=?]", "profile[start_address]"

      assert_select "input#profile_destination_address[name=?]", "profile[destination_address]"

      assert_select "input#profile_have_car[name=?]", "profile[have_car]"
    end
  end
end
