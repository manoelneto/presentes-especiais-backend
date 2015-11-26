object false
extends "spree/api/pagination/collection_pagination", locals: {itens: @products}
child(@products => :products) do
  attributes *product_attributes
  child(:spree_themes) do
    attributes :id
  end
  # extends "spree/api/products/show"
end
