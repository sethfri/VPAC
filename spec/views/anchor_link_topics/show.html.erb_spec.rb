require 'spec_helper'

describe "anchor_link_topics/show" do
  before(:each) do
    @anchor_link_topic = assign(:anchor_link_topic, stub_model(AnchorLinkTopic,
      :name => "Name",
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Content/)
  end
end
