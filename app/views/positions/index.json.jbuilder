json.array!(@positions) do |position|
  json.extract! position, :id, :name, :label
  json.url position_url(position, format: :json)
end
