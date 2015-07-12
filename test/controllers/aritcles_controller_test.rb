require 'test_helper'

class AritclesControllerTest < ActionController::TestCase
  setup do
    @aritcle = aritcles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aritcles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aritcle" do
    assert_difference('Aritcle.count') do
      post :create, aritcle: {  }
    end

    assert_redirected_to aritcle_path(assigns(:aritcle))
  end

  test "should show aritcle" do
    get :show, id: @aritcle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aritcle
    assert_response :success
  end

  test "should update aritcle" do
    patch :update, id: @aritcle, aritcle: {  }
    assert_redirected_to aritcle_path(assigns(:aritcle))
  end

  test "should destroy aritcle" do
    assert_difference('Aritcle.count', -1) do
      delete :destroy, id: @aritcle
    end

    assert_redirected_to aritcles_path
  end
end
