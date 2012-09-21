require 'test_helper'

class TemoignagesControllerTest < ActionController::TestCase
  setup do
    @temoignage = temoignages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:temoignages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create temoignage" do
    assert_difference('Temoignage.count') do
      post :create, temoignage: { fbid: @temoignage.fbid, message: @temoignage.message, nom: @temoignage.nom, prenom: @temoignage.prenom }
    end

    assert_redirected_to temoignage_path(assigns(:temoignage))
  end

  test "should show temoignage" do
    get :show, id: @temoignage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @temoignage
    assert_response :success
  end

  test "should update temoignage" do
    put :update, id: @temoignage, temoignage: { fbid: @temoignage.fbid, message: @temoignage.message, nom: @temoignage.nom, prenom: @temoignage.prenom }
    assert_redirected_to temoignage_path(assigns(:temoignage))
  end

  test "should destroy temoignage" do
    assert_difference('Temoignage.count', -1) do
      delete :destroy, id: @temoignage
    end

    assert_redirected_to temoignages_path
  end
end
