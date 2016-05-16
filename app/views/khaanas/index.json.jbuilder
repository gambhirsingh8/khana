json.array!(@khaanas) do |khaana|
  json.extract! khaana, :id, :title, :description, :user_id
  json.url khaana_url(khaana, format: :json)
end
