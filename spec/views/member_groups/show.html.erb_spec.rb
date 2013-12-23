require 'spec_helper'

describe "member_groups/show" do
  before(:each) do
    @member_group = assign(:member_group, stub_model(MemberGroup,
      :name => "Name",
      :photo_url => "Photo Url",
      :bio => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Photo Url/)
    rendered.should match(/MyText/)
  end
end
