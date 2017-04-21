json.extract! product, :id, :name, :description, :images, :purchased, :user_id, :space_id, :created_at, :updated_at
json.url product_url(product, format: :json)
