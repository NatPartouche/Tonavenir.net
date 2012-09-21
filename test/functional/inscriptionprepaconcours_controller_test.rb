require 'test_helper'

class InscriptionprepaconcoursControllerTest < ActionController::TestCase
  setup do
    @inscriptionprepaconcour = inscriptionprepaconcours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inscriptionprepaconcours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inscriptionprepaconcour" do
    assert_difference('Inscriptionprepaconcour.count') do
      post :create, inscriptionprepaconcour: { concoursenvisages: @inscriptionprepaconcour.concoursenvisages, mail: @inscriptionprepaconcour.mail, message: @inscriptionprepaconcour.message, nom: @inscriptionprepaconcour.nom, prenom: @inscriptionprepaconcour.prenom, prepaconcoursid: @inscriptionprepaconcour.prepaconcoursid, sectionbac: @inscriptionprepaconcour.sectionbac, telephone: @inscriptionprepaconcour.telephone }
    end

    assert_redirected_to inscriptionprepaconcour_path(assigns(:inscriptionprepaconcour))
  end

  test "should show inscriptionprepaconcour" do
    get :show, id: @inscriptionprepaconcour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inscriptionprepaconcour
    assert_response :success
  end

  test "should update inscriptionprepaconcour" do
    put :update, id: @inscriptionprepaconcour, inscriptionprepaconcour: { concoursenvisages: @inscriptionprepaconcour.concoursenvisages, mail: @inscriptionprepaconcour.mail, message: @inscriptionprepaconcour.message, nom: @inscriptionprepaconcour.nom, prenom: @inscriptionprepaconcour.prenom, prepaconcoursid: @inscriptionprepaconcour.prepaconcoursid, sectionbac: @inscriptionprepaconcour.sectionbac, telephone: @inscriptionprepaconcour.telephone }
    assert_redirected_to inscriptionprepaconcour_path(assigns(:inscriptionprepaconcour))
  end

  test "should destroy inscriptionprepaconcour" do
    assert_difference('Inscriptionprepaconcour.count', -1) do
      delete :destroy, id: @inscriptionprepaconcour
    end

    assert_redirected_to inscriptionprepaconcours_path
  end
end
