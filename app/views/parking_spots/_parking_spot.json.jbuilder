json.extract! parking_spot, :id, :parking_location_id, :name, :status, :max_distance, :created_at, :updated_at
json.url parking_spot_url(parking_spot, format: :json)
