require 'spec_helper'

describe "acfee_topics/edit" do
  before(:each) do
    @acfee_topic = assign(:acfee_topic, stub_model(AcfeeTopic,
      :name => "MyString",
      :content => "MyString"
    ))
  end

  it "renders the edit acfee_topic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", acfee_topic_path(@acfee_topic), "post" do
      assert_select "input#acfee_topic_name[name=?]", "acfee_topic[name]"
      assert_select "input#acfee_topic_content[name=?]", "acfee_topic[content]"
    end
  end
end
