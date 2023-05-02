json.extract! sacco, :id, :name, :email, :created_by, :phone, :is_active, :is_deleted, :created_at, :updated_at
json.url sacco_url(sacco, format: :json)
