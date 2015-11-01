require 'spec_helper'

module Spree
  describe Spree::Api::CategoriesController, :type => :controller do
    render_views

    let!(:category) { create(:category) }

    before do
      stub_authentication!
    end

    it "retrieves a list of categories" do
      api_get :index
      expect(assigns[:categories]).to match_array([category])
    end
  end
end
