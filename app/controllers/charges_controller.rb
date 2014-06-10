class ChargesController < ApplicationController
  include ActionView::Helpers::NumberHelper

  def new
  end

  def create
    @cents = params[:amount].gsub(/[^\d\.]/, '').to_i * 100
    @dollar_amount = number_to_currency(params[:amount].gsub(/[^\d\.]/, '').to_i)

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @cents,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )
    flash[:notice] = "Thanks, you paid #{@dollar_amount}"
    redirect_to root_path

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
end
