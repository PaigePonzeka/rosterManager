json.array!(@players) do |player|
  json.extract! player, :id, :name, :position
  json.url player_url(player, format: :json)
end
