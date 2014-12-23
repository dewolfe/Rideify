require 'rails_helper'

RSpec.describe "profiles/show", :type => :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :start_address => "Start Address",
      :destination_address => "Destination Address",
      :have_car => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Start Address/)
    expect(rendered).to match(/Destination Address/)
    expect(rendered).to match(/false/)
  end
end
