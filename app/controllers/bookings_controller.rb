class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    if @current_user.present?
      @booking = Booking.new
      redirect_to booking
    else
      redirect_to login_path
    end
  end

  def create
    if @current_user.present?
      booking = Booking.create booking_params
      booking.update_column(:user_id, @current_user.id)
      redirect_to booking
    else
      redirect_to login_path
    end
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
