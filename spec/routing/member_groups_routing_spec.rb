require "spec_helper"

describe MemberGroupsController do
  describe "routing" do

    it "routes to #index" do
      get("/member_groups").should route_to("member_groups#index")
    end

    it "routes to #new" do
      get("/member_groups/new").should route_to("member_groups#new")
    end

    it "routes to #show" do
      get("/member_groups/1").should route_to("member_groups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/member_groups/1/edit").should route_to("member_groups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/member_groups").should route_to("member_groups#create")
    end

    it "routes to #update" do
      put("/member_groups/1").should route_to("member_groups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/member_groups/1").should route_to("member_groups#destroy", :id => "1")
    end

  end
end
