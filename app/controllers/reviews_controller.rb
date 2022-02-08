class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)

    if @review.save
      redirect_to bookings_path
      raise
    else
      render "bookings/index"
      raise
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
