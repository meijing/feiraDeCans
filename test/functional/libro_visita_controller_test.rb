require 'test_helper'

class LibroVisitaControllerTest < ActionController::TestCase
  setup do
    @libro_visitum = libro_visita(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:libro_visita)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create libro_visitum" do
    assert_difference('LibroVisitum.count') do
      post :create, :libro_visitum => @libro_visitum.attributes
    end

    assert_redirected_to libro_visitum_path(assigns(:libro_visitum))
  end

  test "should show libro_visitum" do
    get :show, :id => @libro_visitum.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @libro_visitum.to_param
    assert_response :success
  end

  test "should update libro_visitum" do
    put :update, :id => @libro_visitum.to_param, :libro_visitum => @libro_visitum.attributes
    assert_redirected_to libro_visitum_path(assigns(:libro_visitum))
  end

  test "should destroy libro_visitum" do
    assert_difference('LibroVisitum.count', -1) do
      delete :destroy, :id => @libro_visitum.to_param
    end

    assert_redirected_to libro_visita_path
  end
end
