require 'test_helper'

class UserProjectsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_projects" do
    assert_difference('UserProjects.count') do
      post :create, :user_projects => { }
    end

    assert_redirected_to user_projects_path(assigns(:user_projects))
  end

  test "should show user_projects" do
    get :show, :id => user_projects(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => user_projects(:one).id
    assert_response :success
  end

  test "should update user_projects" do
    put :update, :id => user_projects(:one).id, :user_projects => { }
    assert_redirected_to user_projects_path(assigns(:user_projects))
  end

  test "should destroy user_projects" do
    assert_difference('UserProjects.count', -1) do
      delete :destroy, :id => user_projects(:one).id
    end

    assert_redirected_to user_projects_path
  end
end
