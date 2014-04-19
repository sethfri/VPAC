require 'spec_helper'

describe "AttendedShows" do
  describe "GET /attended_shows" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get attended_shows_path
      response.status.should be(200)
    end
  end
end
