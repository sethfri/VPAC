require 'spec_helper'

describe "community_scores/new" do
  before(:each) do
    assign(:community_score, stub_model(CommunityScore,
      :school_year => "MyString",
      :member_group => nil,
      :number_score => "9.99"
    ).as_new_record)
  end

  it "renders new community_score form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", community_scores_path, "post" do
      assert_select "input#community_score_school_year[name=?]", "community_score[school_year]"
      assert_select "input#community_score_member_group[name=?]", "community_score[member_group]"
      assert_select "input#community_score_number_score[name=?]", "community_score[number_score]"
    end
  end
end
