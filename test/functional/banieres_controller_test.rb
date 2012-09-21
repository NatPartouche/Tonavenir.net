require 'test_helper'

class BanieresControllerTest < ActionController::TestCase
  setup do
    @baniere = banieres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:banieres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create baniere" do
    assert_difference('Baniere.count') do
      post :create, baniere: { description: @baniere.description, titre: @baniere.titre }
    end

    assert_redirected_to baniere_path(assigns(:baniere))
  end

  test "should show baniere" do
    get :show, id: @baniere
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @baniere
    assert_response :success
  end

  test "should update baniere" do
    put :update, id: @baniere, baniere: { description: @baniere.description, titre: @baniere.titre }
    assert_redirected_to baniere_path(assigns(:baniere))
  end

  test "should destroy baniere" do
    assert_difference('Baniere.count', -1) do
      delete :destroy, id: @baniere
    end

    assert_redirected_to banieres_path
  end
end
