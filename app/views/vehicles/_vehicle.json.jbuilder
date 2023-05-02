json.extract! vehicle, :id, :model, :plate, :number_of_seats, :created_by, :is_active, :is_deleted, :user_id, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
