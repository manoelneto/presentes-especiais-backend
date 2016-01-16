object @theme
attributes *theme_attributes

# node do |t|
#   child t.children => :taxons do
#     attributes *taxon_attributes
#   end
# end

child :personalizations => :personalizations do
  extends "spree/api/personalizations/show"
end

