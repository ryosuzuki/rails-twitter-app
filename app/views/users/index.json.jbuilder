json.array!(@users) do |user|
  json.extract! user, :id, :uid, :username
  json.url user_url(user, format: :json)
end
