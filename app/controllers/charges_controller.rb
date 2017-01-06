class ChargesController < ApplicationController

  Stripe.api_key = ENV['SECRET_KEY']

  def new
  end

  def create
    # amount in cents
    

    #creates a customer object to associate with each charge
    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id
      amount: = params[:amount]
      description: = 'Rails Stripe Customer'
      currency: = 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end


end
