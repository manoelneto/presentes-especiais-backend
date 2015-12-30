json.array!(@area_editions) do |area_edition|
  json.extract! area_edition, :id, :layout_id, :name, :required, :order, :area_type
  json.url area_edition_url(area_edition, format: :json)
end
