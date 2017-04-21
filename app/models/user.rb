class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :create_profile

  has_one :profile, :dependent => :destroy
  has_many :spaces, :dependent => :destroy
  has_many :bookings, :dependent => :destroy
  has_many :products, :dependent => :destroy

  def create_profile
    Profile.create(user_id: id)
  end
end
