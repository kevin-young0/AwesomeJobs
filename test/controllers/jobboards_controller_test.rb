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
      post :create, jobboard: { company: @jobboard.company, description: @jobboard.description, full: @jobboard.full, hours: @jobboard.hours, jobTitle: @jobboard.jobTitle, partTime: @jobboard.partTime, requirements: @jobboard.requirements, salary: @jobboard.salary, website: @jobboard.website, email:@jobboard.email}
    end

    assert_redirected_to jobboard_path(assigns(:jobboard))
  end

  test "should show jobboard" do
    get :show, id: @jobboard
    assert_response :success
  end

  test "should get edit" do
     @request.env["HTTP_AUTHORIZATION"] = "Basic " + Base64::encode64("admin:secret")
    get :edit, id: @jobboard
    assert_response :success
  end

  test "should update jobboard" do
    @request.env["HTTP_AUTHORIZATION"] = "Basic " + Base64::encode64("admin:secret")
    patch :update, id: @jobboard, jobboard: { company: @jobboard.company, description: @jobboard.description, full: @jobboard.full, hours: @jobboard.hours, jobTitle: @jobboard.jobTitle, partTime: @jobboard.partTime, requirements: @jobboard.requirements, salary: @jobboard.salary, website: @jobboard.website , email:@jobboard.email, approved:@jobboard.approved}
    assert_redirected_to jobboard_path(assigns(:jobboard))
  end

  test "should destroy jobboard" do
      @request.env["HTTP_AUTHORIZATION"] = "Basic " + Base64::encode64("admin:secret")
      assert_difference('Jobboard.count', -1) do
      delete :destroy, id: @jobboard
    end

    assert_redirected_to admin_path
  end
    
    class JobboardEmailTest < ActiveSupport::TestCase
     test "allows valid email" do
       addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
       addresses.each do |valid_address|
          user = Jobboard.new(:email => valid_address)
          assert user.errors[:email].empty?
        end
    end


    test "rejects invalid email" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        user = Jobboard.new(:email =>  invalid_address)
        user.valid?
        assert user.errors[:email].any?
       end
    end
  end

  test "Number of jobs" do
    Jobboard.new(:numberOfJobs => 1)
    assert_not_nil(:numberOfJobs)
  end
end
