require 'rails_helper'

RSpec.describe "bookings/new", type: :view do
  before(:each) do
    assign(:booking, Booking.new(
      :approved => false,
      :user => nil,
      :space => nil
    ))
  end

  it "renders new booking form" do
    render

    assert_select "form[action=?][method=?]", bookings_path, "post" do

      assert_select "input#booking_approved[name=?]", "booking[approved]"

      assert_select "input#booking_user_id[name=?]", "booking[user_id]"

      assert_select "input#booking_space_id[name=?]", "booking[space_id]"
    end
  end
end