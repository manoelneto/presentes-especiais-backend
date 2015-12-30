require 'rails_helper'

RSpec.describe "Personalizations", type: :request do
  describe "GET /personalizations" do
    it "works! (now write some real specs)" do
      get personalizations_path
      expect(response).to have_http_status(200)
    end
  end
end
