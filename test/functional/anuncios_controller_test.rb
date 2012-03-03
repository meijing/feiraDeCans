require 'test_helper'

class AnunciosControllerTest < ActionController::TestCase
  setup do
    @anuncio = anuncios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anuncios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anuncio" do
    assert_difference('Anuncio.count') do
      post :create, :anuncio => @anuncio.attributes
    end

    assert_redirected_to anuncio_path(assigns(:anuncio))
  end

  test "should show anuncio" do
    get :show, :id => @anuncio.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @anuncio.to_param
    assert_response :success
  end

  test "should update anuncio" do
    put :update, :id => @anuncio.to_param, :anuncio => @anuncio.attributes
    assert_redirected_to anuncio_path(assigns(:anuncio))
  end

  test "should destroy anuncio" do
    assert_difference('Anuncio.count', -1) do
      delete :destroy, :id => @anuncio.to_param
    end

    assert_redirected_to anuncios_path
  end
end
