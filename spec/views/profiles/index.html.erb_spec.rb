require 'rails_helper'

RSpec.describe "profiles/index", :type => :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :start_address => "Start Address",
        :destination_address => "Destination Address",
        :have_car => false
      ),
      Profile.create!(
        :start_address => "Start Address",
        :destination_address => "Destination Address",
        :have_car => false
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "Start Address".to_s, :count => 2
    assert_select "tr>td", :text => "Destination Address".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
