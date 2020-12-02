class Movie < ApplicationRecord
    has_one_attached :image
    
    has_many :movie_review, -> { order "created_at DESC"}
end
