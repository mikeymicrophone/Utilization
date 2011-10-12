require 'test_helper'

class HavesControllerTest < ActionController::TestCase
  setup do
    @have = haves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:haves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create have" do
    assert_difference('Have.count') do
      post :create, have: @have.attributes
    end

    assert_redirected_to have_path(assigns(:have))
  end

  test "should show have" do
    get :show, id: @have.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @have.to_param
    assert_response :success
  end

  test "should update have" do
    put :update, id: @have.to_param, have: @have.attributes
    assert_redirected_to have_path(assigns(:have))
  end

  test "should destroy have" do
    assert_difference('Have.count', -1) do
      delete :destroy, id: @have.to_param
    end

    assert_redirected_to haves_path
  end
end
