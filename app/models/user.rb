class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :create_profile
  after_create :assign_default_role

  has_one :profile, :dependent => :destroy
  has_many :spaces, :dependent => :destroy
  has_many :bookings, :dependent => :destroy
  has_many :products, :dependent => :destroy

  def create_profile
    Profile.create(user_id: id)
  end

  def assign_default_role
    self.add_role(:user) if self.roles.blank?
  end

  def admin?
    has_role?(:admin)
  end

  def member?
    has_role?(:member)
  end
end
