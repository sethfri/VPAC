require "spec_helper"

describe BoardMembersController do
  describe "routing" do

    it "routes to #index" do
      get("/board_members").should route_to("board_members#index")
    end

    it "routes to #new" do
      get("/board_members/new").should route_to("board_members#new")
    end

    it "routes to #show" do
      get("/board_members/1").should route_to("board_members#show", :id => "1")
    end

    it "routes to #edit" do
      get("/board_members/1/edit").should route_to("board_members#edit", :id => "1")
    end

    it "routes to #create" do
      post("/board_members").should route_to("board_members#create")
    end

    it "routes to #update" do
      put("/board_members/1").should route_to("board_members#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/board_members/1").should route_to("board_members#destroy", :id => "1")
    end

  end
end
