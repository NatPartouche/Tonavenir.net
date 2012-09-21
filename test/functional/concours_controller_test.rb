require 'test_helper'

class ConcoursControllerTest < ActionController::TestCase
  setup do
    @concour = concours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:concours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create concour" do
    assert_difference('Concour.count') do
      post :create, concour: { soustitre: @concour.soustitre, titre: @concour.titre }
    end

    assert_redirected_to concour_path(assigns(:concour))
  end

  test "should show concour" do
    get :show, id: @concour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @concour
    assert_response :success
  end

  test "should update concour" do
    put :update, id: @concour, concour: { soustitre: @concour.soustitre, titre: @concour.titre }
    assert_redirected_to concour_path(assigns(:concour))
  end

  test "should destroy concour" do
    assert_difference('Concour.count', -1) do
      delete :destroy, id: @concour
    end

    assert_redirected_to concours_path
  end
end
