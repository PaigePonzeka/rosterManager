module ApplicationHelper

  def getPlayer(id)
    return Player.find(id)
  end

  def getPositionPlayers(position_id)
    positionPlayers = PlayerPosition.where(position_id: position_id )
  end
end
