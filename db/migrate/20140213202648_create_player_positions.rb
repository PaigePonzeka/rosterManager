class CreatePlayerPositions < ActiveRecord::Migration
  def change
    create_table :player_positions do |t|
      t.integer :player_id
      t.integer :position_id

      t.timestamps
    end
  end
end
