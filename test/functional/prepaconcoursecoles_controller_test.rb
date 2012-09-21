require 'test_helper'

class PrepaconcoursecolesControllerTest < ActionController::TestCase
  setup do
    @prepaconcoursecole = prepaconcoursecoles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prepaconcoursecoles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prepaconcoursecole" do
    assert_difference('Prepaconcoursecole.count') do
      post :create, prepaconcoursecole: { concoursid: @prepaconcoursecole.concoursid, description: @prepaconcoursecole.description, franchiseid: @prepaconcoursecole.franchiseid, heure: @prepaconcoursecole.heure, prix: @prepaconcoursecole.prix, soustitre: @prepaconcoursecole.soustitre, titre: @prepaconcoursecole.titre }
    end

    assert_redirected_to prepaconcoursecole_path(assigns(:prepaconcoursecole))
  end

  test "should show prepaconcoursecole" do
    get :show, id: @prepaconcoursecole
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prepaconcoursecole
    assert_response :success
  end

  test "should update prepaconcoursecole" do
    put :update, id: @prepaconcoursecole, prepaconcoursecole: { concoursid: @prepaconcoursecole.concoursid, description: @prepaconcoursecole.description, franchiseid: @prepaconcoursecole.franchiseid, heure: @prepaconcoursecole.heure, prix: @prepaconcoursecole.prix, soustitre: @prepaconcoursecole.soustitre, titre: @prepaconcoursecole.titre }
    assert_redirected_to prepaconcoursecole_path(assigns(:prepaconcoursecole))
  end

  test "should destroy prepaconcoursecole" do
    assert_difference('Prepaconcoursecole.count', -1) do
      delete :destroy, id: @prepaconcoursecole
    end

    assert_redirected_to prepaconcoursecoles_path
  end
end
