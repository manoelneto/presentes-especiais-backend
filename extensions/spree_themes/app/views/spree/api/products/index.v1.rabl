object false
node(:count) { @products.count }
node(:total_count) { @products.total_count }
node(:current_page) { params[:page] ? params[:page].to_i : 1 }
node(:per_page) { params[:per_page] || Kaminari.config.default_per_page }
node(:pages) { @products.num_pages }
child(@products => :products) do
  attributes *product_attributes
  child(:themes) do
    attributes :id
  end
  # extends "spree/api/products/show"
end