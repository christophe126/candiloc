class CandidatesController < ApplicationController
    #skip_before_action :authenticate_user!, only: :index
  def index
    if params[:query].present?
      sql_query = " \
        candidates.last_name ILIKE :query \
        OR candidates.first_name ILIKE :query \
        OR political_parties.name ILIKE :query \
      "
      @candidates = Candidate.joins(:political_party).where(sql_query, query: "%#{params[:query]}%")

    else
      @candidates = Candidate.where.not(latitude: nil, longitude: nil)
    end

    @markers = @candidates.map do |candidate|
      {
        lat: candidate.latitude,
        lng: candidate.longitude
      }
    end
  end

  def show
    @candidate = Candidate.find(params[:id])
  end

  def new
    @candidate = Candidate.new
  end

  def create
    curr_user = User.find(29)
    @candidate = Candidate.new(candidates_params)
    @candidate.user = curr_user
    if @candidate.save
      redirect_to candidates_path
    else
      render :new
    end
  end

  private

  def candidates_params
    params.require(:candidate).permit(:first_name, :last_name, :description, :price_per_day, :political_party_id, photos: [])
  end
end
