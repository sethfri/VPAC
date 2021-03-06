require 'spec_helper'

describe "publicity_topics/index" do
  before(:each) do
    assign(:publicity_topics, [
      stub_model(PublicityTopic,
        :name => "Name",
        :content => "MyText"
      ),
      stub_model(PublicityTopic,
        :name => "Name",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of publicity_topics" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
