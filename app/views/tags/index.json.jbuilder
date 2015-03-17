json.array!(@tags) do |tag|
  json.extract! tag, :id, :name, :image_id, :description
  json.url tag_url(tag, format: :json)
end
