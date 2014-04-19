require 'spec_helper'

describe "attended_shows/index" do
  before(:each) do
    assign(:attended_shows, [
      stub_model(AttendedShow,
        :title => "Title",
        :school_year => "School Year",
        :host_org => "Host Org"
      ),
      stub_model(AttendedShow,
        :title => "Title",
        :school_year => "School Year",
        :host_org => "Host Org"
      )
    ])
  end

  it "renders a list of attended_shows" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "School Year".to_s, :count => 2
    assert_select "tr>td", :text => "Host Org".to_s, :count => 2
  end
end
