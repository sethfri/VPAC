require 'spec_helper'

describe "anchor_link_topics/index" do
  before(:each) do
    assign(:anchor_link_topics, [
      stub_model(AnchorLinkTopic,
        :name => "Name",
        :content => "Content"
      ),
      stub_model(AnchorLinkTopic,
        :name => "Name",
        :content => "Content"
      )
    ])
  end

  it "renders a list of anchor_link_topics" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
