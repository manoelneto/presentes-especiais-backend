object @layout
attributes *layout_attributes

# node do |t|
#   child t.children => :taxons do
#     attributes *taxon_attributes
#   end
# end

child :area_editions => :area_editions do
  extends "spree/api/area_editions/show"
end

