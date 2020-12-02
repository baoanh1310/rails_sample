json.extract! movie, :id, :name, :length, :created_at, :updated_at
json.url movie_url(movie, format: :json)
