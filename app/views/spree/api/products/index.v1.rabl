object false
extends "spree/api/pagination/collection_pagination", locals: {itens: @products}
child(@products => :products) do
  attributes *product_attributes
  # extends "spree/api/products/show"

  child :master => :master do
    extends "spree/api/variants/small"
  end
end

