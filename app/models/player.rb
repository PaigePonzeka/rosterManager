class Player < ActiveRecord::Base
  attr_accessible :name, :positions
  has_many :player_positions
  has_many :positions, :through => :player_positions
end
