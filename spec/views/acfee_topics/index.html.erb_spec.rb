require 'spec_helper'

describe "acfee_topics/index" do
  before(:each) do
    assign(:acfee_topics, [
      stub_model(AcfeeTopic,
        :name => "Name",
        :content => "Content"
      ),
      stub_model(AcfeeTopic,
        :name => "Name",
        :content => "Content"
      )
    ])
  end

  it "renders a list of acfee_topics" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
