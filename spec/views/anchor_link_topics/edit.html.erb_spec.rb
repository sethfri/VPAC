require 'spec_helper'

describe "anchor_link_topics/edit" do
  before(:each) do
    @anchor_link_topic = assign(:anchor_link_topic, stub_model(AnchorLinkTopic,
      :name => "MyString",
      :content => "MyString"
    ))
  end

  it "renders the edit anchor_link_topic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", anchor_link_topic_path(@anchor_link_topic), "post" do
      assert_select "input#anchor_link_topic_name[name=?]", "anchor_link_topic[name]"
      assert_select "input#anchor_link_topic_content[name=?]", "anchor_link_topic[content]"
    end
  end
end
