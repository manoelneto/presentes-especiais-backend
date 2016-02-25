object false
extends "spree/api/pagination/collection_pagination", locals: {itens: @products}
child(@products => :products) do
  attributes *product_attributes
  # extends "spree/api/products/show"
  node(:has_personalization) { |p| p.themes.any? }

  child :master => :master do
    extends "spree/api/variants/small"
  end
end
