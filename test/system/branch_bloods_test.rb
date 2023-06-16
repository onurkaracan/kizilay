require "application_system_test_case"

class BranchBloodsTest < ApplicationSystemTestCase
  setup do
    @branch_blood = branch_bloods(:one)
  end

  test "visiting the index" do
    visit branch_bloods_url
    assert_selector "h1", text: "Branch bloods"
  end

  test "should create branch blood" do
    visit branch_bloods_url
    click_on "New branch blood"

    fill_in "Blood type", with: @branch_blood.blood_type_id
    fill_in "Branch", with: @branch_blood.branch_id
    fill_in "City", with: @branch_blood.city_id
    fill_in "Number of unit", with: @branch_blood.number_of_unit
    click_on "Create Branch blood"

    assert_text "Branch blood was successfully created"
    click_on "Back"
  end

  test "should update Branch blood" do
    visit branch_blood_url(@branch_blood)
    click_on "Edit this branch blood", match: :first

    fill_in "Blood type", with: @branch_blood.blood_type_id
    fill_in "Branch", with: @branch_blood.branch_id
    fill_in "City", with: @branch_blood.city_id
    fill_in "Number of unit", with: @branch_blood.number_of_unit
    click_on "Update Branch blood"

    assert_text "Branch blood was successfully updated"
    click_on "Back"
  end

  test "should destroy Branch blood" do
    visit branch_blood_url(@branch_blood)
    click_on "Destroy this branch blood", match: :first

    assert_text "Branch blood was successfully destroyed"
  end
end
