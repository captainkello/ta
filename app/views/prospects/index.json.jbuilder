json.array!(@prospects) do |prospect|
  json.extract! prospect, :email, :name, :body
  json.url prospect_url(prospect, format: :json)
end