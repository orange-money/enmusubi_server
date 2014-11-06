json.array!(@users) do |user|
  json.extract! user, :id, :name, :username, :link, :univ
  json.url user_url(user, format: :json)
end
