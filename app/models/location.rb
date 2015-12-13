class Location < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  geocoded_by :address
  after_validation :geocode
end
