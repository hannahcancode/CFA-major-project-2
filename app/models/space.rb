class Space < ApplicationRecord
  belongs_to :user
  has_many :bookings, :dependent => :destroy

  mount_uploaders :images, ImagesUploader
  serialize :images, JSON # If you use SQLite, add this line.

  geocoded_by :full_street_address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  def full_street_address
    "#{street_number} #{street_name}, #{suburb}, #{state}, #{country}"
  end

end
