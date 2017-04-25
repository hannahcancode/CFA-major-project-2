class ProfilePolicy < ApplicationPolicy
  attr_reader :user, :profile

  def initialize(user, profile)
    @user = user
    @profile = profile
  end

  def update?
    user.admin? || @profile.user_id == user.id
  end

  def destroy?
    user.admin?
  end
end
