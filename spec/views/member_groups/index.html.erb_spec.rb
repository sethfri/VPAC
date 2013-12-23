require 'spec_helper'

describe "member_groups/index" do
  before(:each) do
    assign(:member_groups, [
      stub_model(MemberGroup,
        :name => "Name",
        :photo_url => "Photo Url",
        :bio => "MyText"
      ),
      stub_model(MemberGroup,
        :name => "Name",
        :photo_url => "Photo Url",
        :bio => "MyText"
      )
    ])
  end

  it "renders a list of member_groups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Photo Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
