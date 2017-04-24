class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if current_user.profile.name != nil && current_user.profile.name != ""
      root_path
    else
      edit_profile_path(current_user.profile.id)
    end
  end
end
