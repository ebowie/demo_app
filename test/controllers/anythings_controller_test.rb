require 'test_helper'

class AnythingsControllerTest < ActionController::TestCase
  setup do
    @anything = anythings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anythings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anything" do
    assert_difference('Anything.count') do
      post :create, anything: { content: @anything.content, user_id: @anything.user_id }
    end

    assert_redirected_to anything_path(assigns(:anything))
  end

  test "should show anything" do
    get :show, id: @anything
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anything
    assert_response :success
  end

  test "should update anything" do
    patch :update, id: @anything, anything: { content: @anything.content, user_id: @anything.user_id }
    assert_redirected_to anything_path(assigns(:anything))
  end

  test "should destroy anything" do
    assert_difference('Anything.count', -1) do
      delete :destroy, id: @anything
    end

    assert_redirected_to anythings_path
  end
end
