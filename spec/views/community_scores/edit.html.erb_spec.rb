require 'spec_helper'

describe "community_scores/edit" do
  before(:each) do
    @community_score = assign(:community_score, stub_model(CommunityScore,
      :school_year => "MyString",
      :member_group => nil,
      :number_score => "9.99"
    ))
  end

  it "renders the edit community_score form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", community_score_path(@community_score), "post" do
      assert_select "input#community_score_school_year[name=?]", "community_score[school_year]"
      assert_select "input#community_score_member_group[name=?]", "community_score[member_group]"
      assert_select "input#community_score_number_score[name=?]", "community_score[number_score]"
    end
  end
end
