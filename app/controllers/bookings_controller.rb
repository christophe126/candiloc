class BookingsController < ApplicationController
  #skip_before_action :authenticate_user!, only: :index
  #before_action :set_user, only: :new
  before_action :set_candidate, only: [:create, :new]

  def index
    # my_current_user =
    @bookings = Booking.where(user_id: current_user.id).order(id: :desc)
    @review = Review.new
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    start_date = Date.parse(params[:booking][:start_date])
    end_date = Date.parse(params[:booking][:end_date])
    total_days = end_date - start_date
    price_per_day = @candidate.price_per_day
    total_price = price_per_day * total_days
    total_price = total_price.to_i
    @booking.total_price = total_price
    @booking.user = current_user
    @booking.candidate = @candidate

    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def destroy
  end

  private

  def set_candidate
    @candidate = Candidate.find(params[:candidate_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end
end
