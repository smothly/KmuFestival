json.extract! form, :id, :name, :category, :position, :description, :created_at, :updated_at
json.url form_url(form, format: :json)
