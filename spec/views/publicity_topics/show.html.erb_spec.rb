require 'spec_helper'

describe "publicity_topics/show" do
  before(:each) do
    @publicity_topic = assign(:publicity_topic, stub_model(PublicityTopic,
      :name => "Name",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
