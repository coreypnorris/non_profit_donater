class DonationsController < ApplicationController
  include ActionView::Helpers::NumberHelper

  def index
    @donations = Donation.all
  end

  def show
    @donation = Donation.find(params[:id])
    @cents = number_to_currency(@donation.price).gsub(/[^\d\.]/, '').to_i * 100
  end

private
  def donation_params
    params.require(:donation).permit(:name, :price)
  end
end
