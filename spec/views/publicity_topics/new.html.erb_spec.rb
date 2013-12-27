require 'spec_helper'

describe "publicity_topics/new" do
  before(:each) do
    assign(:publicity_topic, stub_model(PublicityTopic,
      :name => "MyString",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new publicity_topic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", publicity_topics_path, "post" do
      assert_select "input#publicity_topic_name[name=?]", "publicity_topic[name]"
      assert_select "textarea#publicity_topic_content[name=?]", "publicity_topic[content]"
    end
  end
end
