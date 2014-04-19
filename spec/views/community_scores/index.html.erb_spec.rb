require 'spec_helper'

describe "community_scores/index" do
  before(:each) do
    assign(:community_scores, [
      stub_model(CommunityScore,
        :school_year => "School Year",
        :member_group => nil,
        :number_score => "9.99"
      ),
      stub_model(CommunityScore,
        :school_year => "School Year",
        :member_group => nil,
        :number_score => "9.99"
      )
    ])
  end

  it "renders a list of community_scores" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "School Year".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
