json.extract! postapi, :id, :name, :message, :created_at, :updated_at
json.url postapi_url(postapi, format: :json)
