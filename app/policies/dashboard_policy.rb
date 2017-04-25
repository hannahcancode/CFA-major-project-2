class DashboardPolicy < Struct.new(:user, :dashboard)
  def show_admin?
    user.admin?
  end

end
