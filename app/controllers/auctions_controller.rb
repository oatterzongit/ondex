class AuctionsController < ApplicationController

  before_action :set_auction, only: [:edit, :update, :destroy]
  before_action :authorize, except: [:index, :show]

  def index
    @auctions = Auction.all
  end

  def show
    @auction = Auction.find(params[:id])
  end

  def new
    @auction = Auction.new
  end

  def create
    @auction = Auction.new(auction_params)
    if @auction.save
      redirect_to root_path
    end
  end

  def edit
  end

  def post
    @auction = Auction.find(params[:id])
  end

  def destroy
    @auction = Auction.find(params[:id])
  end


  private
    def auction_params
      params.require(:auction).permit(:item_name, :item_desc, :item_img, :tags)
    end
end
