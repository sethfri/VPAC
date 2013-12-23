require 'spec_helper'

describe "MemberGroups" do
  describe "GET /member_groups" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get member_groups_path
      response.status.should be(200)
    end
  end
end
