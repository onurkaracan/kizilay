require "test_helper"

class RequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get requests_url
    assert_response :success
  end

  test "should get new" do
    get new_request_url
    assert_response :success
  end

  test "should create request" do
    assert_difference("Request.count") do
      post requests_url, params: { request: { blood_type_id: @request.blood_type_id, branch_id: @request.branch_id, city_id: @request.city_id, duration_of_search: @request.duration_of_search, email: @request.email, number_of_units: @request.number_of_units, reason: @request.reason, requester_id: @request.requester_id, town_id: @request.town_id } }
    end

    assert_redirected_to request_url(Request.last)
  end

  test "should show request" do
    get request_url(@request)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_url(@request)
    assert_response :success
  end

  test "should update request" do
    patch request_url(@request), params: { request: { blood_type_id: @request.blood_type_id, branch_id: @request.branch_id, city_id: @request.city_id, duration_of_search: @request.duration_of_search, email: @request.email, number_of_units: @request.number_of_units, reason: @request.reason, requester_id: @request.requester_id, town_id: @request.town_id } }
    assert_redirected_to request_url(@request)
  end

  test "should destroy request" do
    assert_difference("Request.count", -1) do
      delete request_url(@request)
    end

    assert_redirected_to requests_url
  end
end
