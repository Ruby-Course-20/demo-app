json.extract! post, :id, :title, :description, :comments, :created_at, :updated_at
json.url post_url(post, format: :json)
