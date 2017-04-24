class PagesController < ApplicationController
  def index
  end

  def host_dashboard
  #get approved and not approved bookings
  #render template for that host
  @spaces = current_user.spaces

  end

  def guest_dashboard
    @bookings = current_user.bookings
    @approved_bookings = @bookings.approved
    @pending_bookings = @bookings.pending
    @paid_bookings = @bookings.paid

  end

  def admin_dashboard
    authorize :dashboard, :show?
    @users = User.all
  end

  def maps
    @spaces = Space.all
  end
end
