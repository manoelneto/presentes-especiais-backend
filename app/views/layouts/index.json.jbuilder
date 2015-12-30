json.array!(@layouts) do |layout|
  json.extract! layout, :id, :personalization_id, :name, :order
  json.url layout_url(layout, format: :json)
end
