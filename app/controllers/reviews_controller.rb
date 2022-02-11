class ReviewsController < ApplicationController

  def new
    # @booking = Booking.find(params[:booking_id])
    # @candidate = Candidate.find(@booking.candidate_id)
    @review = Review.new
    raise
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:review][:id])
    @review.booking = @booking
    if @review.save
      redirect_to bookings_path
    else
      render "bookings/index"
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
