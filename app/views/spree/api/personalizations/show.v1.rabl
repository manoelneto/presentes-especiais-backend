object @personalization
attributes *personalization_attributes

# node do |t|
#   child t.children => :taxons do
#     attributes *taxon_attributes
#   end
# end

child :layouts => :layouts do
  extends "spree/api/layouts/show"
end

