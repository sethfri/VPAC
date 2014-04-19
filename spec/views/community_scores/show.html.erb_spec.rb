require 'spec_helper'

describe "community_scores/show" do
  before(:each) do
    @community_score = assign(:community_score, stub_model(CommunityScore,
      :school_year => "School Year",
      :member_group => nil,
      :number_score => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/School Year/)
    rendered.should match(//)
    rendered.should match(/9.99/)
  end
end
