json.array!(@text_infos) do |text_info|
  json.extract! text_info, :id, :user_id, :lecture_name, :textbook_name, :price, :comment, :image, :status
  json.url text_info_url(text_info, format: :json)
end
