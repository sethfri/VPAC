require 'spec_helper'

describe "BoardMembers" do
  describe "GET /board_members" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get board_members_path
      response.status.should be(200)
    end
  end
end
