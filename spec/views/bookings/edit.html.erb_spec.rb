require 'rails_helper'

RSpec.describe "bookings/edit", type: :view do
  before(:each) do
    @booking = assign(:booking, Booking.create!(
      :approved => false,
      :user => nil,
      :space => nil
    ))
  end

  xit "renders the edit booking form" do
    render

    assert_select "form[action=?][method=?]", booking_path(@booking), "post" do

      assert_select "input#booking_approved[name=?]", "booking[approved]"
    end
  end
end
