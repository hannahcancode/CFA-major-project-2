class PagesController < ApplicationController
  def index
  end

  def about
  end

  def member_dashboard
    @bookings = current_user.bookings
    @approved_bookings = @bookings.approved
    @pending_bookings = @bookings.pending
    @paid_bookings = @bookings.paid
    @spaces = current_user.spaces
  end

  def admin_dashboard
    authorize :dashboard, :show_admin?
    @users = User.all
  end

  def maps
    @spaces = Space.all
  end
end
