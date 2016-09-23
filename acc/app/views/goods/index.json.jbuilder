json.array!(@goods) do |good|
  json.extract! good, :id, :name, :unit, :note
  json.url good_url(good, format: :json)
end
