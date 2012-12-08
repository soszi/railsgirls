class Attendee < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  attr_accessible :address, :bio, :name, :picture, :twitter_handle
  geocoded_by :address
  after_validation :geocode
  acts_as_gmappable :process_geocoding => false
end
