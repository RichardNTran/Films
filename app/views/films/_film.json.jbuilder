json.extract! film, :id, :name, :description, :url, :category, :created_at, :updated_at
json.url film_url(film, format: :json)
