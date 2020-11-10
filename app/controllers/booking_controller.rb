class BookingController < ApplicationController
  def index
end
    def new
      @booking = Bookings.new
      render 'bookings/new'
    end

    def create
      # @current_user.mixtapes.create mixtape_params
      boking = Booking.create booking_params
      @current_user.bookings << bookings
      redirect_to root_path
    end


    def booking_params
      params.require(:booking).permit(:title)
    end
end
