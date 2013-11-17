require 'test_helper'

class JobboardsControllerTest < ActionController::TestCase
  setup do
    @jobboard = jobboards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobboards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jobboard" do
    assert_difference('Jobboard.count') do
      post :create, jobboard: { company: @jobboard.company, description: @jobboard.description, full: @jobboard.full, hours: @jobboard.hours, jobTitle: @jobboard.jobTitle, partTime: @jobboard.partTime, requirements: @jobboard.requirements, salary: @jobboard.salary, website: @jobboard.website }
    end

    assert_redirected_to jobboard_path(assigns(:jobboard))
  end

  test "should show jobboard" do
    get :show, id: @jobboard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jobboard
    assert_response :success
  end

  test "should update jobboard" do
    patch :update, id: @jobboard, jobboard: { company: @jobboard.company, description: @jobboard.description, full: @jobboard.full, hours: @jobboard.hours, jobTitle: @jobboard.jobTitle, partTime: @jobboard.partTime, requirements: @jobboard.requirements, salary: @jobboard.salary, website: @jobboard.website }
    assert_redirected_to jobboard_path(assigns(:jobboard))
  end

  test "should destroy jobboard" do
    assert_difference('Jobboard.count', -1) do
      delete :destroy, id: @jobboard
    end

    assert_redirected_to jobboards_path
  end
end
