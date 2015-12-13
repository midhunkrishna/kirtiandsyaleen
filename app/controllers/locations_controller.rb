class LocationsController < ApplicationController
  layout 'locations_layout'
  
  def show
    @location = Location.find(params[:id])
  end
end
