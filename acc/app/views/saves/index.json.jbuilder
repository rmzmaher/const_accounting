json.array!(@saves) do |safe|
  json.extract! safe, :id, :cash, :date, :sheet, :note
  json.url safe_url(safe, format: :json)
end
