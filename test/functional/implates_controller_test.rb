require 'test_helper'

class ImplatesControllerTest < ActionController::TestCase
  setup do
    @implate = implates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:implates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create implate" do
    assert_difference('Implate.count') do
      post :create, implate: @implate.attributes
    end

    assert_redirected_to implate_path(assigns(:implate))
  end

  test "should show implate" do
    get :show, id: @implate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @implate
    assert_response :success
  end

  test "should update implate" do
    put :update, id: @implate, implate: @implate.attributes
    assert_redirected_to implate_path(assigns(:implate))
  end

  test "should destroy implate" do
    assert_difference('Implate.count', -1) do
      delete :destroy, id: @implate
    end

    assert_redirected_to implates_path
  end
end
