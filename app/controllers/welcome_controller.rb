class WelcomeController < ApplicationController

  def index
    @donations = Donation.all
  end
end
