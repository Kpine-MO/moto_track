json.extract! trip, :id, :coordinator, :price_per_passanger, :number_of_passengers, :user_id, :vehicle_id, :created_at, :updated_at
json.url trip_url(trip, format: :json)
