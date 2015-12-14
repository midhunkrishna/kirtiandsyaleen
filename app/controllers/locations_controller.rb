class LocationsController < ApplicationController
  layout 'locations_layout'
  
  def show
    @location = location
  end

  def gmap
    if browser.android?
      redirect_to "http://maps.google.com/?q=#{address}&sll=#{lat_long}"
    elsif browser.ios?
      redirect_to "http://maps.apple.com/?q=#{map_search_string}"
    else
      redirect_to "http://maps.google.com/?q=#{address}&sll=#{lat_long}"
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

  def map_search_string
    if location.address.present?
      return address
    end
    lat_long
  end

  def address
    URI.encode(location.address)
  end

  def lat_long
    "#{latitude},#{longitude}"
  end
end
