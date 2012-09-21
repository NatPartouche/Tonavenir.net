require 'test_helper'

class DevenirFranchisesControllerTest < ActionController::TestCase
  setup do
    @devenir_franchise = devenir_franchises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:devenir_franchises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create devenir_franchise" do
    assert_difference('DevenirFranchise.count') do
      post :create, devenir_franchise: { departement: @devenir_franchise.departement, message: @devenir_franchise.message, nom: @devenir_franchise.nom, prenom: @devenir_franchise.prenom, tel: @devenir_franchise.tel, ville: @devenir_franchise.ville }
    end

    assert_redirected_to devenir_franchise_path(assigns(:devenir_franchise))
  end

  test "should show devenir_franchise" do
    get :show, id: @devenir_franchise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @devenir_franchise
    assert_response :success
  end

  test "should update devenir_franchise" do
    put :update, id: @devenir_franchise, devenir_franchise: { departement: @devenir_franchise.departement, message: @devenir_franchise.message, nom: @devenir_franchise.nom, prenom: @devenir_franchise.prenom, tel: @devenir_franchise.tel, ville: @devenir_franchise.ville }
    assert_redirected_to devenir_franchise_path(assigns(:devenir_franchise))
  end

  test "should destroy devenir_franchise" do
    assert_difference('DevenirFranchise.count', -1) do
      delete :destroy, id: @devenir_franchise
    end

    assert_redirected_to devenir_franchises_path
  end
end
