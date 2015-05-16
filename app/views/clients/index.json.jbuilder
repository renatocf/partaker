json.array!(@clients) do |client|
  json.extract! client, :id, :username, :email, :name, :password, :photo, :location
  json.url client_url(client, format: :json)
end
