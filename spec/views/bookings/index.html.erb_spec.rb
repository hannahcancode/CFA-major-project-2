require 'rails_helper'

RSpec.describe "bookings/index", type: :view do
  before(:each) do
    assign(:bookings, [
      Booking.create!(
        :approved => false,
        :user => nil,
        :space => nil
      ),
      Booking.create!(
        :approved => false,
        :user => nil,
        :space => nil
      )
    ])
  end

  xit "renders a list of bookings" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
