json.array!(@themes) do |theme|
  json.extract! theme, :id, :spree_product_id, :picture, :name, :default
  json.url theme_url(theme, format: :json)
end
