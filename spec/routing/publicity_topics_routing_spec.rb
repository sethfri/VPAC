require "spec_helper"

describe PublicityTopicsController do
  describe "routing" do

    it "routes to #index" do
      get("/publicity_topics").should route_to("publicity_topics#index")
    end

    it "routes to #new" do
      get("/publicity_topics/new").should route_to("publicity_topics#new")
    end

    it "routes to #show" do
      get("/publicity_topics/1").should route_to("publicity_topics#show", :id => "1")
    end

    it "routes to #edit" do
      get("/publicity_topics/1/edit").should route_to("publicity_topics#edit", :id => "1")
    end

    it "routes to #create" do
      post("/publicity_topics").should route_to("publicity_topics#create")
    end

    it "routes to #update" do
      put("/publicity_topics/1").should route_to("publicity_topics#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/publicity_topics/1").should route_to("publicity_topics#destroy", :id => "1")
    end

  end
end
