class DepthChartController < ApplicationController
  
  def index
    @depthChart = PlayerPosition.all
    @position = Position.all
    @players = Player.all
  end

end