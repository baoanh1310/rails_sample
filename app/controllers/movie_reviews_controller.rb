class MovieReviewsController < ApplicationController
  before_action :set_movie_review, only: [:show, :edit, :update, :destroy]

  # GET /movie_reviews
  # GET /movie_reviews.json
  def index
    @movie_reviews = MovieReview.all
  end

  # GET /movie_reviews/1
  # GET /movie_reviews/1.json
  def show
  end

  # GET /movie_reviews/new
  def new
    @movie_review = MovieReview.new
  end

  # GET /movie_reviews/1/edit
  def edit
  end

  # POST /movie_reviews
  # POST /movie_reviews.json
  def create
    @movie_review = MovieReview.new(movie_review_params)
    @movie_review.user_id = current_user.id

    respond_to do |format|
      if @movie_review.save
        url = "/movies/" + @movie_review.movie_id.to_s
        format.html { redirect_to url, notice: 'Movie review was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @movie_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_reviews/1
  # PATCH/PUT /movie_reviews/1.json
  def update
    respond_to do |format|
      if @movie_review.update(movie_review_params)
        format.html { redirect_to @movie_review, notice: 'Movie review was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie_review }
      else
        format.html { render :edit }
        format.json { render json: @movie_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_reviews/1
  # DELETE /movie_reviews/1.json
  def destroy
    @movie_review.destroy
    respond_to do |format|
      format.html { redirect_to movie_reviews_url, notice: 'Movie review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_review
      @movie_review = MovieReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_review_params
      params.require(:movie_review).permit(:user_id, :movie_id, :review)
    end
end
