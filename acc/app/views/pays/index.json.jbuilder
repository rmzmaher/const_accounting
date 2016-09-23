json.array!(@pays) do |pay|
  json.extract! pay, :id, :amount, :date, :note, :contractor_id
  json.url pay_url(pay, format: :json)
end
