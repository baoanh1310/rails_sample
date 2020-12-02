require 'test_helper'

class MovieReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_review = movie_reviews(:one)
  end

  test "should get index" do
    get movie_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_review_url
    assert_response :success
  end

  test "should create movie_review" do
    assert_difference('MovieReview.count') do
      post movie_reviews_url, params: { movie_review: { movie_id: @movie_review.movie_id, review: @movie_review.review, user_id: @movie_review.user_id } }
    end

    assert_redirected_to movie_review_url(MovieReview.last)
  end

  test "should show movie_review" do
    get movie_review_url(@movie_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_review_url(@movie_review)
    assert_response :success
  end

  test "should update movie_review" do
    patch movie_review_url(@movie_review), params: { movie_review: { movie_id: @movie_review.movie_id, review: @movie_review.review, user_id: @movie_review.user_id } }
    assert_redirected_to movie_review_url(@movie_review)
  end

  test "should destroy movie_review" do
    assert_difference('MovieReview.count', -1) do
      delete movie_review_url(@movie_review)
    end

    assert_redirected_to movie_reviews_url
  end
end
