class PropertiesController < ApplicationController

  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
  end

  def create
    property = Property.create property_params
    # User.first.properties << property
    # property.update_column(:product_owner_id, @current_user.stripe_user_id)
    redirect_to property
  end

  def show
    @property = Property.find params[:id]
  end

  def edit
    @property = Property.find params[:id]
  end

  def update
    property = Property.find params[:id]
    property.update property_params
    redirect_to property
  end

  def destroy
    property = Property.find params[:id]
    property.destroy
    redirect_to properties_path
  end

  private
  def property_params
    params.require(:property).permit(:name, :address, :price, :guest, :bedroom, :bathroom, :bed, :parking_space, :available_date, :photo, :details)
  end
end
