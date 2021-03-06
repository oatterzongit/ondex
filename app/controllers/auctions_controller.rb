class AuctionsController < ApplicationController

  before_action :authorize, except: [:index, :show]

  def index
    @auctions = Auction.order('created_at DESC').all
  end

  def show
    # For Displaying Auctions
    @auction = Auction.find(params[:id])
    @username = User.find_by(id:@auction.user_id).username

    # For Displaying Offers
    @offers = Auction.find_by(id:@auction.id).offers

  end

  def new
    @auction = Auction.new
    @auction.user_id = current_user.id
  end

  def create
    @auction = Auction.new(auction_params)
    @auction.user_id = current_user.id
    if @auction.save
      flash[:notice] = 'Your item is on deck!'
      redirect_to root_path
    end

  end

  def edit
    @auction = Auction.find(params[:id])
  end

  def update
    @auction = Auction.find(params[:id])
    if @auction.update_attributes(auction_params)
      flash[:notice] = 'Updated Succesfully'
      redirect_to
    else
      flash[:notice] = 'Error: Check form'
      render :edit
    end
  end

  def destroy
    @auction = Auction.find(params[:id])
    @auction.destroy
    redirect_to root_path, notice: "Post Deleted!"
  end


  private
    def auction_params
      params.require(:auction).permit(:user_id, :item_name, :item_desc, :item_img, :tags)
    end
end
