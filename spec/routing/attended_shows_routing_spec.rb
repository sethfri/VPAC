require "spec_helper"

describe AttendedShowsController do
  describe "routing" do

    it "routes to #index" do
      get("/attended_shows").should route_to("attended_shows#index")
    end

    it "routes to #new" do
      get("/attended_shows/new").should route_to("attended_shows#new")
    end

    it "routes to #show" do
      get("/attended_shows/1").should route_to("attended_shows#show", :id => "1")
    end

    it "routes to #edit" do
      get("/attended_shows/1/edit").should route_to("attended_shows#edit", :id => "1")
    end

    it "routes to #create" do
      post("/attended_shows").should route_to("attended_shows#create")
    end

    it "routes to #update" do
      put("/attended_shows/1").should route_to("attended_shows#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/attended_shows/1").should route_to("attended_shows#destroy", :id => "1")
    end

  end
end
