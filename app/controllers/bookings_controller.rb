class BookingsController < ApplicationController

  before_action :set_user, only: :new

  def index
    @test = current_user
    my_current_user = User.find(30)
    @bookings = Booking.where(user_id: my_current_user)
  end

  # CA NE MARCHE PAS POUR L'INSTANT
  def new
    @booking = Booking.new
    @candidate = Candidate.find(params[:candidate_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = @user
  end

  def destroy
  end

  private

  def set_user
    @user = current_user
  end

  def booking_params
    params.require(:booking).permit(:total_price, :start_date)
  end
end

# class BookmarksController < ApplicationController
#   def new
#     # @list = List.find(params[:id])
#     @bookmark = Bookmark.new
#     @list = List.find(params[:list_id])
#   end
#   def create
#     @bookmark = Bookmark.new(bookmark_params)
#     @list = List.find(params[:list_id])
#     @bookmark.list = @list
#     @bookmark.save
#     if @bookmark.save
#       redirect_to list_path(@list)
#     else
#       render :new
#     end
#   end
#   def destroy
#     @bookmark = Bookmark.find(params[:id])
#     @bookmark.destroy
#     redirect_to list_path(@bookmark.list)
#   end
#   private

#   def bookmark_params
#     params.require(:bookmark).permit(:comment, :movie_id, :list_id)
#   end

# end
