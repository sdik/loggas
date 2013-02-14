require 'test_helper'

class NotafiscalsControllerTest < ActionController::TestCase
  setup do
    @notafiscal = notafiscals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notafiscals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notafiscal" do
    assert_difference('Notafiscal.count') do
      post :create, notafiscal: @notafiscal.attributes
    end

    assert_redirected_to notafiscal_path(assigns(:notafiscal))
  end

  test "should show notafiscal" do
    get :show, id: @notafiscal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notafiscal
    assert_response :success
  end

  test "should update notafiscal" do
    put :update, id: @notafiscal, notafiscal: @notafiscal.attributes
    assert_redirected_to notafiscal_path(assigns(:notafiscal))
  end

  test "should destroy notafiscal" do
    assert_difference('Notafiscal.count', -1) do
      delete :destroy, id: @notafiscal
    end

    assert_redirected_to notafiscals_path
  end
end
