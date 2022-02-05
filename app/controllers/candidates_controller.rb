class CandidatesController < ApplicationController
    #skip_before_action :authenticate_user!, only: :index
  def index
    if params[:query].present?
      @query = params[:query]
      @candidates = Candidate.joins("
        INNER JOIN political_parties ON
        candidates.political_party_id = political_parties.id WHERE
        political_parties.name ilike '%#{params[:query]}%'
        ")
    else
      @candidates = Candidate.all
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
