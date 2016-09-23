json.array!(@buys) do |buy|
  json.extract! buy, :id, :paid, :price_per_unit, :quantity, :date, :note, :good_id
  json.url buy_url(buy, format: :json)
end
