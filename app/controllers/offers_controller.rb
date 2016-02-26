class OffersController < ApplicationController

  before_action :authorize, except: [:index, :show]

  def new
    @auction = Auction.find(params[:auction_id])
    @offer = Offer.new
  end

  def create
    @auction = Auction.find(params[:auction_id])
    @offer = Offer.new(offer_params)
    @offer.auction_id = @auction.id
    @offer.user_id = current_user.id
    if @offer.save
      flash[:notice] = 'Offer Posted!'
      redirect_to auction_path(@auction)
    end
  end

  private

    def offer_params
      params.require(:offer).permit(:offer_desc, :user_id, :auction_id)
    end

end
