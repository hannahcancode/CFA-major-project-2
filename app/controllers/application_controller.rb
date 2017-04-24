class ApplicationController < ActionController::Base
  include Pundit
  before_action :authenticate_user!, :except => [:index]
  protect_from_forgery with: :exception

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:notice] = "You are not authorized to perform this action."
    redirect_to(spaces_path)
  end

  def after_sign_in_path_for(resource)
    if current_user.profile.name != nil && current_user.profile.name != ""
      root_path
    else
      edit_profile_path(current_user.profile.id)
    end
  end
end
