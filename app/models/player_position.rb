class PlayerPosition < ActiveRecord::Base
 attr_accessible :position_id, :player_id
  belongs_to :player
  belongs_to :position
end
