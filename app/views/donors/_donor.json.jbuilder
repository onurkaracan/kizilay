json.extract! donor, :id, :donor_name, :blood_type_id, :city_id, :town_id, :phone_number, :photo, :branch_id, :created_at, :updated_at
json.url donor_url(donor, format: :json)
