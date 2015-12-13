class Location < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  geocoded_by :address
  after_validation :geocode

  def self.default
    location = self.find_by(default: true)
    location.present? ? location : self.first
  end
end
