json.extract! profile, :id, :user_id, :display_name, :bio, :created_at, :updated_at
json.url profile_url(profile, format: :json)
