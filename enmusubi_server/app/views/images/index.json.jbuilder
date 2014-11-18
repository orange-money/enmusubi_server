json.array!(@images) do |image|
  json.extract! image, :id, :file_name
  json.url image_url(image, format: :json)
end
