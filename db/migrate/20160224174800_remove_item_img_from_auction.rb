class RemoveItemImgFromAuction < ActiveRecord::Migration
  def change
    remove_column :auctions, :item_img
  end
end
