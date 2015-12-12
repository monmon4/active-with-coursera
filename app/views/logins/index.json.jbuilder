json.array!(@logins) do |login|
  json.extract! login, :id, :name, :pass
  json.url login_url(login, format: :json)
end
