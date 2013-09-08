require 'test_helper'

class CoachesControllerTest < ActionController::TestCase
  setup do
    @coach = coaches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coaches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coach" do
    assert_difference('Coach.count') do
      post :create, coach: { description: @coach.description, first_name: @coach.first_name, gender: @coach.gender, last_name: @coach.last_name }
    end

    assert_redirected_to coach_path(assigns(:coach))
  end

  test "should show coach" do
    get :show, id: @coach
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coach
    assert_response :success
  end

  test "should update coach" do
    put :update, id: @coach, coach: { description: @coach.description, first_name: @coach.first_name, gender: @coach.gender, last_name: @coach.last_name }
    assert_redirected_to coach_path(assigns(:coach))
  end

  test "should destroy coach" do
    assert_difference('Coach.count', -1) do
      delete :destroy, id: @coach
    end

    assert_redirected_to coaches_path
  end
end