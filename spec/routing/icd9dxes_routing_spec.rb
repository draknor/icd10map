require "spec_helper"

describe Icd9dxesController do
  describe "routing" do

    it "routes to #index" do
      get("/icd9dxes").should route_to("icd9dxes#index")
    end

    it "routes to #new" do
      get("/icd9dxes/new").should route_to("icd9dxes#new")
    end

    it "routes to #show" do
      get("/icd9dxes/1").should route_to("icd9dxes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/icd9dxes/1/edit").should route_to("icd9dxes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/icd9dxes").should route_to("icd9dxes#create")
    end

    it "routes to #update" do
      put("/icd9dxes/1").should route_to("icd9dxes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/icd9dxes/1").should route_to("icd9dxes#destroy", :id => "1")
    end

  end
end
