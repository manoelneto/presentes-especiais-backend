object false
# extends "spree/api/pagination/collection_pagination", locals: {itens: @categories}
child(@categories => :categories) do
  extends "spree/api/categories/show"
end
