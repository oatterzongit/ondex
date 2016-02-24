class AddAttachmentItemImgToAuctions < ActiveRecord::Migration
  def self.up
    change_table :auctions do |t|
      t.attachment :item_img
    end
  end

  def self.down
    remove_attachment :auctions, :item_img
  end
end
