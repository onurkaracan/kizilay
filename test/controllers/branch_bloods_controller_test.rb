require "test_helper"

class BranchBloodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @branch_blood = branch_bloods(:one)
  end

  test "should get index" do
    get branch_bloods_url
    assert_response :success
  end

  test "should get new" do
    get new_branch_blood_url
    assert_response :success
  end

  test "should create branch_blood" do
    assert_difference("BranchBlood.count") do
      post branch_bloods_url, params: { branch_blood: { blood_type_id: @branch_blood.blood_type_id, branch_id: @branch_blood.branch_id, city_id: @branch_blood.city_id, number_of_unit: @branch_blood.number_of_unit } }
    end

    assert_redirected_to branch_blood_url(BranchBlood.last)
  end

  test "should show branch_blood" do
    get branch_blood_url(@branch_blood)
    assert_response :success
  end

  test "should get edit" do
    get edit_branch_blood_url(@branch_blood)
    assert_response :success
  end

  test "should update branch_blood" do
    patch branch_blood_url(@branch_blood), params: { branch_blood: { blood_type_id: @branch_blood.blood_type_id, branch_id: @branch_blood.branch_id, city_id: @branch_blood.city_id, number_of_unit: @branch_blood.number_of_unit } }
    assert_redirected_to branch_blood_url(@branch_blood)
  end

  test "should destroy branch_blood" do
    assert_difference("BranchBlood.count", -1) do
      delete branch_blood_url(@branch_blood)
    end

    assert_redirected_to branch_bloods_url
  end
end
