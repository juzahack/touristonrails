json.array!(@users) do |user|
  json.extract! user, :id, :surname, :name, :email, :reputation, :place
  json.url user_url(user, format: :json)
end
