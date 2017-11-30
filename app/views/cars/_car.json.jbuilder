json.extract! car, :id, :user_id, :name, :description, :brand, :model, :mileage, :fuel_type, :registration_number, :review, :oil_change, :notifications_allowed, :created_at, :updated_at
json.url car_url(car, format: :json)
