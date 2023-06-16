require "application_system_test_case"

class UserBranchesTest < ApplicationSystemTestCase
  setup do
    @user_branch = user_branches(:one)
  end

  test "visiting the index" do
    visit user_branches_url
    assert_selector "h1", text: "User branches"
  end

  test "should create user branch" do
    visit user_branches_url
    click_on "New user branch"

    fill_in "Branch", with: @user_branch.branch_id
    fill_in "User", with: @user_branch.user_id
    click_on "Create User branch"

    assert_text "User branch was successfully created"
    click_on "Back"
  end

  test "should update User branch" do
    visit user_branch_url(@user_branch)
    click_on "Edit this user branch", match: :first

    fill_in "Branch", with: @user_branch.branch_id
    fill_in "User", with: @user_branch.user_id
    click_on "Update User branch"

    assert_text "User branch was successfully updated"
    click_on "Back"
  end

  test "should destroy User branch" do
    visit user_branch_url(@user_branch)
    click_on "Destroy this user branch", match: :first

    assert_text "User branch was successfully destroyed"
  end
end
