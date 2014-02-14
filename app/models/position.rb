class Position < ActiveRecord::Base
  attr_accessible :label, :name

  has_many :player_positions
  has_many :players, :through => :player_positions
end
