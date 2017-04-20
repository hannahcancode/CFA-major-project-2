class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :space

  scope :approved, -> { where(approved: true, paid: false) }
  scope :paid, -> { where(paid: true) }
  scope :pending, -> { where(approved: false) }
end
