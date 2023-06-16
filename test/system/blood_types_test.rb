require "application_system_test_case"

class BloodTypesTest < ApplicationSystemTestCase
  setup do
    @blood_type = blood_types(:one)
  end

  test "visiting the index" do
    visit blood_types_url
    assert_selector "h1", text: "Blood types"
  end

  test "should create blood type" do
    visit blood_types_url
    click_on "New blood type"

    fill_in "Type name", with: @blood_type.type_name
    click_on "Create Blood type"

    assert_text "Blood type was successfully created"
    click_on "Back"
  end

  test "should update Blood type" do
    visit blood_type_url(@blood_type)
    click_on "Edit this blood type", match: :first

    fill_in "Type name", with: @blood_type.type_name
    click_on "Update Blood type"

    assert_text "Blood type was successfully updated"
    click_on "Back"
  end

  test "should destroy Blood type" do
    visit blood_type_url(@blood_type)
    click_on "Destroy this blood type", match: :first

    assert_text "Blood type was successfully destroyed"
  end
end
