class ChargesController < ApplicationController
  def new
    @space = Space.find(params[:s])
  end

  def create
    @booking = Booking.find(params[:id])
    # Amount in cents
    @amount = (@booking.space.price * 100).to_i

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => "Booking id: #{@booking.id}",
      :currency    => 'aud'
    )

    @transaction = Transaction.create(amount: @amount, user_id: current_user.id, booking_id: @booking.id)

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path(r: @booking.space.id)
  end
end
