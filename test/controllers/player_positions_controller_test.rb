require 'test_helper'

class PlayerPositionsControllerTest < ActionController::TestCase
  setup do
    @player_position = player_positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_position" do
    assert_difference('PlayerPosition.count') do
      post :create, player_position: { player_id: @player_position.player_id, position_id: @player_position.position_id }
    end

    assert_redirected_to player_position_path(assigns(:player_position))
  end

  test "should show player_position" do
    get :show, id: @player_position
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_position
    assert_response :success
  end

  test "should update player_position" do
    patch :update, id: @player_position, player_position: { player_id: @player_position.player_id, position_id: @player_position.position_id }
    assert_redirected_to player_position_path(assigns(:player_position))
  end

  test "should destroy player_position" do
    assert_difference('PlayerPosition.count', -1) do
      delete :destroy, id: @player_position
    end

    assert_redirected_to player_positions_path
  end
end
