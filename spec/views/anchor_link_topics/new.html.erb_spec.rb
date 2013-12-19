require 'spec_helper'

describe "anchor_link_topics/new" do
  before(:each) do
    assign(:anchor_link_topic, stub_model(AnchorLinkTopic,
      :name => "MyString",
      :content => "MyString"
    ).as_new_record)
  end

  it "renders new anchor_link_topic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", anchor_link_topics_path, "post" do
      assert_select "input#anchor_link_topic_name[name=?]", "anchor_link_topic[name]"
      assert_select "input#anchor_link_topic_content[name=?]", "anchor_link_topic[content]"
    end
  end
end
