json.array!(@contractors) do |contractor|
  json.extract! contractor, :id, :name, :phone, :type, :note
  json.url contractor_url(contractor, format: :json)
end
