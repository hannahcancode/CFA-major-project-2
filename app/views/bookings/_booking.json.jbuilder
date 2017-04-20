json.extract! booking, :id, :start_date, :end_date, :approved, :user_id, :space_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
