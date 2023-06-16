require "test_helper"

class UserBranchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_branch = user_branches(:one)
  end

  test "should get index" do
    get user_branches_url
    assert_response :success
  end

  test "should get new" do
    get new_user_branch_url
    assert_response :success
  end

  test "should create user_branch" do
    assert_difference("UserBranch.count") do
      post user_branches_url, params: { user_branch: { branch_id: @user_branch.branch_id, user_id: @user_branch.user_id } }
    end

    assert_redirected_to user_branch_url(UserBranch.last)
  end

  test "should show user_branch" do
    get user_branch_url(@user_branch)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_branch_url(@user_branch)
    assert_response :success
  end

  test "should update user_branch" do
    patch user_branch_url(@user_branch), params: { user_branch: { branch_id: @user_branch.branch_id, user_id: @user_branch.user_id } }
    assert_redirected_to user_branch_url(@user_branch)
  end

  test "should destroy user_branch" do
    assert_difference("UserBranch.count", -1) do
      delete user_branch_url(@user_branch)
    end

    assert_redirected_to user_branches_url
  end
end
