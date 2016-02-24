class AddAuctionToOffers < ActiveRecord::Migration
  def change
    add_reference :offers, :auction, index: true, foreign_key: true
  end
end
