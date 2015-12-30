require 'rails_helper'

RSpec.describe "AreaEditions", type: :request do
  describe "GET /area_editions" do
    it "works! (now write some real specs)" do
      get area_editions_path
      expect(response).to have_http_status(200)
    end
  end
end
