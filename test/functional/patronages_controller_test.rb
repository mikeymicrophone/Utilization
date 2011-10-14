require 'test_helper'

class PatronagesControllerTest < ActionController::TestCase
  setup do
    @patronage = patronages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patronages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patronage" do
    assert_difference('Patronage.count') do
      post :create, patronage: @patronage.attributes
    end

    assert_redirected_to patronage_path(assigns(:patronage))
  end

  test "should show patronage" do
    get :show, id: @patronage.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patronage.to_param
    assert_response :success
  end

  test "should update patronage" do
    put :update, id: @patronage.to_param, patronage: @patronage.attributes
    assert_redirected_to patronage_path(assigns(:patronage))
  end

  test "should destroy patronage" do
    assert_difference('Patronage.count', -1) do
      delete :destroy, id: @patronage.to_param
    end

    assert_redirected_to patronages_path
  end
end
