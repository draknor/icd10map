require 'spec_helper'

describe "Icd9dxes" do
  describe "GET /icd9dxes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get icd9dxes_path
      response.status.should be(200)
    end
  end
end
