class ReviewsController < ApplicationController
  def new
    @album = Album.find(params[:album_id])
    @review = @album.reviews.new
  end

  def create
    @album = Album.find(params[:album_id])
    @review = @album.reviews.new(review_params)
    if @review.save
      redirect_to album_path(@review.album)
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:author, :content, :rating)
  end
end
