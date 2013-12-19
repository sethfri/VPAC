require "spec_helper"

describe AcfeeTopicsController do
  describe "routing" do

    it "routes to #index" do
      get("/acfee_topics").should route_to("acfee_topics#index")
    end

    it "routes to #new" do
      get("/acfee_topics/new").should route_to("acfee_topics#new")
    end

    it "routes to #show" do
      get("/acfee_topics/1").should route_to("acfee_topics#show", :id => "1")
    end

    it "routes to #edit" do
      get("/acfee_topics/1/edit").should route_to("acfee_topics#edit", :id => "1")
    end

    it "routes to #create" do
      post("/acfee_topics").should route_to("acfee_topics#create")
    end

    it "routes to #update" do
      put("/acfee_topics/1").should route_to("acfee_topics#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/acfee_topics/1").should route_to("acfee_topics#destroy", :id => "1")
    end

  end
end
