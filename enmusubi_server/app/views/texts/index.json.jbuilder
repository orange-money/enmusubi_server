json.array!(@texts) do |text|
  json.extract! text, :id, :user_id, :lecture_name, :textbook_name, :price, :comment, :image, :status
  json.url text_url(text, format: :json)
end
