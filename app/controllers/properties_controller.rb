class PropertiesController < ApplicationController

  def index
    @properties = Property.search(params[:search]) # required for simple search
    @markers = @properties.map do |property|
       {
         lat: property.latitude,
         lng: property.longitude,
         infoWindow: { content: render_to_string(partial: "/properties/info_window", locals: { property: @property }) }
       }
     end
  end

  def new
    @property = Property.new

  end

  def create
    property = Property.create property_params
    property.update_column(:listing_owner_id, @current_user.id)
    redirect_to property
  end

  def show
    @property = Property.find params[:id]
    @markers = [{
      lat: @property.latitude,
      lng: @property.longitude,
      infoWindow: { content: render_to_string(partial: "/properties/info_window", locals: { property: @property }) }
    }]
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
    params.require(:property).permit(:title, :price, :description, :street_number, :address,  :guest, :bedroom, :bathroom, :bed, :parking_space, :available_date)
  end
end
