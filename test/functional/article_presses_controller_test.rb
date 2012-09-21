require 'test_helper'

class ArticlePressesControllerTest < ActionController::TestCase
  setup do
    @article_press = article_presses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:article_presses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create article_press" do
    assert_difference('ArticlePress.count') do
      post :create, article_press: { date: @article_press.date, description: @article_press.description, journal: @article_press.journal, titre: @article_press.titre }
    end

    assert_redirected_to article_press_path(assigns(:article_press))
  end

  test "should show article_press" do
    get :show, id: @article_press
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @article_press
    assert_response :success
  end

  test "should update article_press" do
    put :update, id: @article_press, article_press: { date: @article_press.date, description: @article_press.description, journal: @article_press.journal, titre: @article_press.titre }
    assert_redirected_to article_press_path(assigns(:article_press))
  end

  test "should destroy article_press" do
    assert_difference('ArticlePress.count', -1) do
      delete :destroy, id: @article_press
    end

    assert_redirected_to article_presses_path
  end
end
