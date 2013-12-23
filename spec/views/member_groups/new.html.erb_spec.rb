require 'spec_helper'

describe "member_groups/new" do
  before(:each) do
    assign(:member_group, stub_model(MemberGroup,
      :name => "MyString",
      :photo_url => "MyString",
      :bio => "MyText"
    ).as_new_record)
  end

  it "renders new member_group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", member_groups_path, "post" do
      assert_select "input#member_group_name[name=?]", "member_group[name]"
      assert_select "input#member_group_photo_url[name=?]", "member_group[photo_url]"
      assert_select "textarea#member_group_bio[name=?]", "member_group[bio]"
    end
  end
end
