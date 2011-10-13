require 'test_helper'

class PossessionsControllerTest < ActionController::TestCase
  setup do
    @possession = possessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:possessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create possession" do
    assert_difference('Possession.count') do
      post :create, possession: @possession.attributes
    end

    assert_redirected_to possession_path(assigns(:possession))
  end

  test "should show possession" do
    get :show, id: @possession.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @possession.to_param
    assert_response :success
  end

  test "should update possession" do
    put :update, id: @possession.to_param, possession: @possession.attributes
    assert_redirected_to possession_path(assigns(:possession))
  end

  test "should destroy possession" do
    assert_difference('Possession.count', -1) do
      delete :destroy, id: @possession.to_param
    end

    assert_redirected_to possessions_path
  end
end
