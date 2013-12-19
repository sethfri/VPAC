require 'spec_helper'

describe "board_members/index" do
  before(:each) do
    assign(:board_members, [
      stub_model(BoardMember,
        :name => "Name",
        :bio => "MyText",
        :photo_url => "Photo Url",
        :email => "Email"
      ),
      stub_model(BoardMember,
        :name => "Name",
        :bio => "MyText",
        :photo_url => "Photo Url",
        :email => "Email"
      )
    ])
  end

  it "renders a list of board_members" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Photo Url".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
