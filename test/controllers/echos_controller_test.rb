require 'test_helper'

class EchosControllerTest < ActionController::TestCase
  setup do
    @echo = echos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:echos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create echo" do
    assert_difference('Echo.count') do
      post :create, echo: { body: @echo.body }
    end

    assert_redirected_to echo_path(assigns(:echo))
  end

  test "should show echo" do
    get :show, id: @echo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @echo
    assert_response :success
  end

  test "should update echo" do
    patch :update, id: @echo, echo: { body: @echo.body }
    assert_redirected_to echo_path(assigns(:echo))
  end

  test "should destroy echo" do
    assert_difference('Echo.count', -1) do
      delete :destroy, id: @echo
    end

    assert_redirected_to echos_path
  end
end
