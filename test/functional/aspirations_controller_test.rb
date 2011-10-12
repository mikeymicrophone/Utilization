require 'test_helper'

class AspirationsControllerTest < ActionController::TestCase
  setup do
    @aspiration = aspirations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aspirations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aspiration" do
    assert_difference('Aspiration.count') do
      post :create, aspiration: @aspiration.attributes
    end

    assert_redirected_to aspiration_path(assigns(:aspiration))
  end

  test "should show aspiration" do
    get :show, id: @aspiration.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aspiration.to_param
    assert_response :success
  end

  test "should update aspiration" do
    put :update, id: @aspiration.to_param, aspiration: @aspiration.attributes
    assert_redirected_to aspiration_path(assigns(:aspiration))
  end

  test "should destroy aspiration" do
    assert_difference('Aspiration.count', -1) do
      delete :destroy, id: @aspiration.to_param
    end

    assert_redirected_to aspirations_path
  end
end
