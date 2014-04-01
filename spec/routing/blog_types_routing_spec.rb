require "spec_helper"

describe BlogTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/blog_types").should route_to("blog_types#index")
    end

    it "routes to #new" do
      get("/blog_types/new").should route_to("blog_types#new")
    end

    it "routes to #show" do
      get("/blog_types/1").should route_to("blog_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/blog_types/1/edit").should route_to("blog_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/blog_types").should route_to("blog_types#create")
    end

    it "routes to #update" do
      put("/blog_types/1").should route_to("blog_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/blog_types/1").should route_to("blog_types#destroy", :id => "1")
    end

  end
end
