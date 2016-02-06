object @personalization
attributes *personalization_attributes

node :picture_area_bg do |c| c.picture.url(:area_bg) end

# node do |t|
#   child t.children => :taxons do
#     attributes *taxon_attributes
#   end
# end

child :layouts => :layouts do
  extends "spree/api/layouts/show"
end

