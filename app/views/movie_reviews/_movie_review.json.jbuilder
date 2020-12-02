json.extract! movie_review, :id, :user_id, :movie_id, :review, :created_at, :updated_at
json.url movie_review_url(movie_review, format: :json)
