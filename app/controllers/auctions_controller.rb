class AuctionsController < ApplicationController

  before_action :set_auction, only: [:edit, :update, :destroy]
  before_action :authorize, except: [:index, :show]

  def index
  end

  def new
    @auction = Auction.new
  end

  def create
    new_auction = Auction.new(self.auction_params)
    if new_action.save
      redirect_to root_path
    end
  end

end
