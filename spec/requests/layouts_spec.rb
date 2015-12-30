require 'rails_helper'

RSpec.describe "Layouts", type: :request do
  describe "GET /layouts" do
    it "works! (now write some real specs)" do
      get layouts_path
      expect(response).to have_http_status(200)
    end
  end
end
