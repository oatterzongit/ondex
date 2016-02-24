class AddAttachmentItemImgToOffers < ActiveRecord::Migration
  def self.up
    change_table :offers do |t|
      t.attachment :item_img
    end
  end

  def self.down
    remove_attachment :offers, :item_img
  end
end
