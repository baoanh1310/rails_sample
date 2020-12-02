class CreateMovieReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :movie_reviews do |t|
      t.integer :user_id
      t.integer :movie_id
      t.text :review

      t.timestamps
    end
  end
end
