require 'spec_helper'

describe "attended_shows/show" do
  before(:each) do
    @attended_show = assign(:attended_show, stub_model(AttendedShow,
      :title => "Title",
      :school_year => "School Year",
      :host_org => "Host Org"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/School Year/)
    rendered.should match(/Host Org/)
  end
end
