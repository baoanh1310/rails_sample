require "application_system_test_case"

class MovieReviewsTest < ApplicationSystemTestCase
  setup do
    @movie_review = movie_reviews(:one)
  end

  test "visiting the index" do
    visit movie_reviews_url
    assert_selector "h1", text: "Movie Reviews"
  end

  test "creating a Movie review" do
    visit movie_reviews_url
    click_on "New Movie Review"

    fill_in "Movie", with: @movie_review.movie_id
    fill_in "Review", with: @movie_review.review
    fill_in "User", with: @movie_review.user_id
    click_on "Create Movie review"

    assert_text "Movie review was successfully created"
    click_on "Back"
  end

  test "updating a Movie review" do
    visit movie_reviews_url
    click_on "Edit", match: :first

    fill_in "Movie", with: @movie_review.movie_id
    fill_in "Review", with: @movie_review.review
    fill_in "User", with: @movie_review.user_id
    click_on "Update Movie review"

    assert_text "Movie review was successfully updated"
    click_on "Back"
  end

  test "destroying a Movie review" do
    visit movie_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Movie review was successfully destroyed"
  end
end
