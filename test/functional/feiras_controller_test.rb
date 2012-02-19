require 'test_helper'

class FeirasControllerTest < ActionController::TestCase
  setup do
    @feira = feiras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feiras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feira" do
    assert_difference('Feira.count') do
      post :create, :feira => @feira.attributes
    end

    assert_redirected_to feira_path(assigns(:feira))
  end

  test "should show feira" do
    get :show, :id => @feira.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @feira.to_param
    assert_response :success
  end

  test "should update feira" do
    put :update, :id => @feira.to_param, :feira => @feira.attributes
    assert_redirected_to feira_path(assigns(:feira))
  end

  test "should destroy feira" do
    assert_difference('Feira.count', -1) do
      delete :destroy, :id => @feira.to_param
    end

    assert_redirected_to feiras_path
  end
end
