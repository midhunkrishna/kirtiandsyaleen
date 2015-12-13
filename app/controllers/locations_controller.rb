class LocationsController < ApplicationController
  layout 'locations_layout'
  
  def show
    @location = location
  end

  def gmap
    if browser.android?
      redirect_to "http://maps.google.com/maps?q=#{latitude},#{longitude}"
    elsif browser.ios?
      redirect_to "http://maps.apple.com/?q=#{latitude},#{longitude}"
    else
      redirect_to "http://maps.google.com/maps?q=#{latitude},#{longitude}"
    end
  end


  private
  def location
    @location ||= Location.find(params[:id])
  end
  
  def longitude
    location.longitude
  end

  def latitude
    location.latitude
  end
end
