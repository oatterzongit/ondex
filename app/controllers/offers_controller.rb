class OffersController < ApplicationController

  def new
    @offer = Offer.new
  end
end



  private

    def offer_params
      params.require(:offer).permit(:offer_desc, :user_id, :auction_id)
    end
