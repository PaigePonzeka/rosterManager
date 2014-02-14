json.array!(@player_positions) do |player_position|
  json.extract! player_position, :id, :player_id, :position_id
  json.url player_position_url(player_position, format: :json)
end
