class Space < ApplicationRecord
  belongs_to :user
  has_many :bookings, :dependent => :destroy

  mount_uploaders :images, ImagesUploader
  serialize :avatars, JSON # If you use SQLite, add this line.

end
