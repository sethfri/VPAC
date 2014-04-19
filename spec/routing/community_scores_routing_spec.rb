require "spec_helper"

describe CommunityScoresController do
  describe "routing" do

    it "routes to #index" do
      get("/community_scores").should route_to("community_scores#index")
    end

    it "routes to #new" do
      get("/community_scores/new").should route_to("community_scores#new")
    end

    it "routes to #show" do
      get("/community_scores/1").should route_to("community_scores#show", :id => "1")
    end

    it "routes to #edit" do
      get("/community_scores/1/edit").should route_to("community_scores#edit", :id => "1")
    end

    it "routes to #create" do
      post("/community_scores").should route_to("community_scores#create")
    end

    it "routes to #update" do
      put("/community_scores/1").should route_to("community_scores#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/community_scores/1").should route_to("community_scores#destroy", :id => "1")
    end

  end
end
