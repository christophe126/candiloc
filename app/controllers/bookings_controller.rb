class BookingsController < ApplicationController

  before_action :set_candidate

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    # Récupérer la start date >> variable
    start_date = Date.new(params['start_date'])

    # Récupérer la end date >> variable
    end_date = Date.new(params['end_date'])

    # Récupérer le nombres de jours >> soustraction
    total_days = end_date - start_date

    # Récupérer le @candidate.price_per_day
    price_per_day = @candidate.price_per_day

    # Calculer le nouveau prix ppd * jours
    total_price = price_per_day * total_days

    # Sauvegarder le nouveau prix dans le booking
    @booking.total_price = total_price

    @booking.user = current_user
    @booking.candidate = @candidate
    byebug
    if @booking.save
      redirect_to candidate_path(@candidate)
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
    params.require(:booking).permit(:start_date, :end_date)
  end
end
