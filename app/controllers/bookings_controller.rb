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

  def show
    @booking = Booking.find params[:id]
  end

  def edit
    @booking = Booking.find params[:id]
  end

  def update
    booking = Booking.find params[:id]
    booking.update booking_params
    redirect_to booking
  end

  def destroy
    booking = Booking.find params[:id]
    booking.destroy
    redirect_to root_path
  end

  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :nights, :total_price, :guests, :user_id, :property_id)
  end

end
