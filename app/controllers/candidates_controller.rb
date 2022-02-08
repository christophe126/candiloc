class CandidatesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index
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
        lng: candidate.longitude,
        info_window: render_to_string(partial: "info_window", locals: { candidate: candidate }),
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
  end

  def show
    @candidate = Candidate.find(params[:id])
    @photo_main = @candidate.photos.find_by(blob_id: 1)
    @photo_thumb_1 = @candidate.photos.find_by(blob_id: 2)
    @photo_thumb_2 = @candidate.photos.find_by(blob_id: 3)
    @photo_thumb_3 = @candidate.photos.find_by(blob_id: 4)
    @photo_thumb_4 = @candidate.photos.find_by(blob_id: 5)
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
    params.require(:candidate).permit(:first_name, :last_name, :description, :price_per_day, :political_party_id,
                                      photos: [])
  end
end
