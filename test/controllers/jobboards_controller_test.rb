require 'test_helper'

class JobboardsControllerTest < ActionController::TestCase
  setup do
    @jobboard = jobboards(:one)
    @update = {
      :jobTitle 'Lorem Ipsum'
      :company 'Company Name'
      :hours'20 hours'
      :full'true'
      :partTime'true'
      :salary'20000'
      :description'Job Description'
      :requirements'Job Requiremants'
      :website'www.Company.com'
      :email'company@company.com'
      :approved'true'
      }
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
      post :create, jobboard: @update
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
    put :update, id: @jobboards, jobboards: @update
  assert_redirected_to jobboard_path(assigns(:jobboard))
  end

  test "should destroy jobboard" do
    assert_difference('Jobboard.count', -1) do
      delete :destroy, id: @jobboard
    end

    assert_redirected_to jobboards_path
  end
end
