class SpacePolicy < ApplicationPolicy
  attr_reader :user, :space

  def initialize(user, space)
    @user = user
    @space = space
  end

  def update?
    user.admin?
  end
end
