require 'spec_helper'

describe "acfee_topics/new" do
  before(:each) do
    assign(:acfee_topic, stub_model(AcfeeTopic,
      :name => "MyString",
      :content => "MyString"
    ).as_new_record)
  end

  it "renders new acfee_topic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", acfee_topics_path, "post" do
      assert_select "input#acfee_topic_name[name=?]", "acfee_topic[name]"
      assert_select "input#acfee_topic_content[name=?]", "acfee_topic[content]"
    end
  end
end
