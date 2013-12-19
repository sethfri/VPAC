require 'spec_helper'

describe "acfee_topics/show" do
  before(:each) do
    @acfee_topic = assign(:acfee_topic, stub_model(AcfeeTopic,
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
