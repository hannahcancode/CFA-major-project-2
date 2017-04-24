class UserPolicy < ApplicationPolicy
  attr_reader :user, :account

  def initialize(user, account)
    @user = user
    @account = account
  end

  def update?
    user.admin?
  end

  def destroy?
    user.admin?
  end
end
