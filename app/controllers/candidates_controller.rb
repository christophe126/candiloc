class CandidatesController < ApplicationController
  def index
    if params[:query].present?
      #@query = params[:query]
      @candidates = Candidate.joins()where("political_party.name like '%#{params[:query]}%' ")
      raise
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
    @candidate = Candidate.new(candidate_params)
    @candidate.save
    if @candidate.save
      redirect_to candidate_path(@candidate)
    else
      render :new
    end
  end

  private

  def candidates_params
    params.require(:candidate).permit(:first_name, :last_name, :description, :price_per_day)
  end
end
