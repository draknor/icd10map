require "spec_helper"

describe Icd10dxesController do
  describe "routing" do

    it "routes to #index" do
      get("/icd10dxes").should route_to("icd10dxes#index")
    end

    it "routes to #new" do
      get("/icd10dxes/new").should route_to("icd10dxes#new")
    end

    it "routes to #show" do
      get("/icd10dxes/1").should route_to("icd10dxes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/icd10dxes/1/edit").should route_to("icd10dxes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/icd10dxes").should route_to("icd10dxes#create")
    end

    it "routes to #update" do
      put("/icd10dxes/1").should route_to("icd10dxes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/icd10dxes/1").should route_to("icd10dxes#destroy", :id => "1")
    end

  end
end
