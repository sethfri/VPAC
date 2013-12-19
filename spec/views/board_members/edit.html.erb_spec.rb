require 'spec_helper'

describe "board_members/edit" do
  before(:each) do
    @board_member = assign(:board_member, stub_model(BoardMember,
      :name => "MyString",
      :bio => "MyText",
      :photo_url => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit board_member form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", board_member_path(@board_member), "post" do
      assert_select "input#board_member_name[name=?]", "board_member[name]"
      assert_select "textarea#board_member_bio[name=?]", "board_member[bio]"
      assert_select "input#board_member_photo_url[name=?]", "board_member[photo_url]"
      assert_select "input#board_member_email[name=?]", "board_member[email]"
    end
  end
end
