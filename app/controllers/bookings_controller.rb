class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    booking = Booking.create booking_params
    @current_user.bookings << booking
    redirect_to root_path
  end

  def booking_params
    params.require(:booking).permit(:title)
  end

end
