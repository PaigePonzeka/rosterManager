class PlayerPositionsController < ApplicationController
  before_action :set_player_position, only: [:show, :edit, :update, :destroy]

  # GET /player_positions
  # GET /player_positions.json
  def index
    @player_positions = PlayerPosition.all
  end

  # GET /player_positions/1
  # GET /player_positions/1.json
  def show
  end

  # GET /player_positions/new
  def new
    @player_position = PlayerPosition.new
  end

  # GET /player_positions/1/edit
  def edit
  end

  # POST /player_positions
  # POST /player_positions.json
  def create
    @player_position = PlayerPosition.new(player_position_params)

    respond_to do |format|
      if @player_position.save
        format.html { redirect_to @player_position, notice: 'Player position was successfully created.' }
        format.json { render action: 'show', status: :created, location: @player_position }
      else
        format.html { render action: 'new' }
        format.json { render json: @player_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_positions/1
  # PATCH/PUT /player_positions/1.json
  def update
    respond_to do |format|
      if @player_position.update(player_position_params)
        format.html { redirect_to @player_position, notice: 'Player position was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @player_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_positions/1
  # DELETE /player_positions/1.json
  def destroy
    @player_position.destroy
    respond_to do |format|
      format.html { redirect_to player_positions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_position
      @player_position = PlayerPosition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_position_params
      params.require(:player_position).permit(:player_id, :position_id)
    end
end
