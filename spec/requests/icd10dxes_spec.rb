require 'spec_helper'

describe "Icd10dxes" do
  describe "GET /icd10dxes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get icd10dxes_path
      response.status.should be(200)
    end
  end
end
