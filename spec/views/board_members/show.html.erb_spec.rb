require 'spec_helper'

describe "board_members/show" do
  before(:each) do
    @board_member = assign(:board_member, stub_model(BoardMember,
      :name => "Name",
      :bio => "MyText",
      :photo_url => "Photo Url",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Photo Url/)
    rendered.should match(/Email/)
  end
end
