require 'spec_helper'

describe "attended_shows/edit" do
  before(:each) do
    @attended_show = assign(:attended_show, stub_model(AttendedShow,
      :title => "MyString",
      :school_year => "MyString",
      :host_org => "MyString"
    ))
  end

  it "renders the edit attended_show form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", attended_show_path(@attended_show), "post" do
      assert_select "input#attended_show_title[name=?]", "attended_show[title]"
      assert_select "input#attended_show_school_year[name=?]", "attended_show[school_year]"
      assert_select "input#attended_show_host_org[name=?]", "attended_show[host_org]"
    end
  end
end
