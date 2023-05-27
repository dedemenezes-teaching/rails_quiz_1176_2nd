class ReviewsController < ApplicationController
  def new
    @song = Song.find(params[:song_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @song = Song.find(params[:song_id])
    @review.song = @song #=> MUST BE AN INSTANCE OF SONG!
    # raise
    if @review.save
      redirect_to song_path(@song)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def review_params
    params.require(:review).permit(:content)
  end
end
