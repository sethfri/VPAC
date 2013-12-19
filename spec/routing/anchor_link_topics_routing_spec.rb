require "spec_helper"

describe AnchorLinkTopicsController do
  describe "routing" do

    it "routes to #index" do
      get("/anchor_link_topics").should route_to("anchor_link_topics#index")
    end

    it "routes to #new" do
      get("/anchor_link_topics/new").should route_to("anchor_link_topics#new")
    end

    it "routes to #show" do
      get("/anchor_link_topics/1").should route_to("anchor_link_topics#show", :id => "1")
    end

    it "routes to #edit" do
      get("/anchor_link_topics/1/edit").should route_to("anchor_link_topics#edit", :id => "1")
    end

    it "routes to #create" do
      post("/anchor_link_topics").should route_to("anchor_link_topics#create")
    end

    it "routes to #update" do
      put("/anchor_link_topics/1").should route_to("anchor_link_topics#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/anchor_link_topics/1").should route_to("anchor_link_topics#destroy", :id => "1")
    end

  end
end
