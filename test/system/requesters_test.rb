require "application_system_test_case"

class RequestersTest < ApplicationSystemTestCase
  setup do
    @requester = requesters(:one)
  end

  test "visiting the index" do
    visit requesters_url
    assert_selector "h1", text: "Requesters"
  end

  test "should create requester" do
    visit requesters_url
    click_on "New requester"

    fill_in "Name", with: @requester.name
    click_on "Create Requester"

    assert_text "Requester was successfully created"
    click_on "Back"
  end

  test "should update Requester" do
    visit requester_url(@requester)
    click_on "Edit this requester", match: :first

    fill_in "Name", with: @requester.name
    click_on "Update Requester"

    assert_text "Requester was successfully updated"
    click_on "Back"
  end

  test "should destroy Requester" do
    visit requester_url(@requester)
    click_on "Destroy this requester", match: :first

    assert_text "Requester was successfully destroyed"
  end
end
