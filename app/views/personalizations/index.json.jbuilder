json.array!(@personalizations) do |personalization|
  json.extract! personalization, :id, :theme_id, :picture, :name, :order
  json.url personalization_url(personalization, format: :json)
end
