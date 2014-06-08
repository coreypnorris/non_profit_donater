class DonationsController < ApplicationController

  def index
    @donations = Donation.all
  end

  def show
    @donation = Donation.find(params[:id])
  end

private
  def donation_params
    params.require(:donation).permit(:name, :price)
  end
end
