json.array!(@properties) do |property|
  json.extract! property, :id, :address, :price, :bedrooms, :bathrooms, :description
  json.url property_url(property, format: :json)
end
