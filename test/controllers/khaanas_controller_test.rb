require 'test_helper'

class KhaanasControllerTest < ActionController::TestCase
  setup do
    @khaana = khaanas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:khaanas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create khaana" do
    assert_difference('Khaana.count') do
      post :create, khaana: { description: @khaana.description, title: @khaana.title, user_id: @khaana.user_id }
    end

    assert_redirected_to khaana_path(assigns(:khaana))
  end

  test "should show khaana" do
    get :show, id: @khaana
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @khaana
    assert_response :success
  end

  test "should update khaana" do
    patch :update, id: @khaana, khaana: { description: @khaana.description, title: @khaana.title, user_id: @khaana.user_id }
    assert_redirected_to khaana_path(assigns(:khaana))
  end

  test "should destroy khaana" do
    assert_difference('Khaana.count', -1) do
      delete :destroy, id: @khaana
    end

    assert_redirected_to khaanas_path
  end
end
