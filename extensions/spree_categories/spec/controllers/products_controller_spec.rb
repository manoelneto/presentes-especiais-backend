require 'spec_helper'

module Spree
  describe Spree::Api::ProductsController, :type => :controller do
    render_views

    let!(:product) { create(:product) }
    let!(:category) { create(:category) }
    let!(:product_with_category) { create(:product, category: category) }

    before do
      stub_authentication!
    end

    it "retrieves a list of products by category" do
      api_get :index, { category_id: category.id}
      expect(assigns[:products]).to match_array([product_with_category])
    end
  end
end
