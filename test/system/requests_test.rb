require "application_system_test_case"

class RequestsTest < ApplicationSystemTestCase
  setup do
    @request = requests(:one)
  end

  test "visiting the index" do
    visit requests_url
    assert_selector "h1", text: "Requests"
  end

  test "should create request" do
    visit requests_url
    click_on "New request"

    fill_in "Blood type", with: @request.blood_type_id
    fill_in "Branch", with: @request.branch_id
    fill_in "City", with: @request.city_id
    fill_in "Duration of search", with: @request.duration_of_search
    fill_in "Email", with: @request.email
    fill_in "Number of units", with: @request.number_of_units
    fill_in "Reason", with: @request.reason
    fill_in "Requester", with: @request.requester_id
    fill_in "Town", with: @request.town_id
    click_on "Create Request"

    assert_text "Request was successfully created"
    click_on "Back"
  end

  test "should update Request" do
    visit request_url(@request)
    click_on "Edit this request", match: :first

    fill_in "Blood type", with: @request.blood_type_id
    fill_in "Branch", with: @request.branch_id
    fill_in "City", with: @request.city_id
    fill_in "Duration of search", with: @request.duration_of_search
    fill_in "Email", with: @request.email
    fill_in "Number of units", with: @request.number_of_units
    fill_in "Reason", with: @request.reason
    fill_in "Requester", with: @request.requester_id
    fill_in "Town", with: @request.town_id
    click_on "Update Request"

    assert_text "Request was successfully updated"
    click_on "Back"
  end

  test "should destroy Request" do
    visit request_url(@request)
    click_on "Destroy this request", match: :first

    assert_text "Request was successfully destroyed"
  end
end
