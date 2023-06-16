json.extract! request, :id, :email, :reason, :requester_id, :blood_type_id, :city_id, :town_id, :number_of_units, :duration_of_search, :branch_id, :created_at, :updated_at
json.url request_url(request, format: :json)
