class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.string :item_name
      t.text :item_desc
      t.text :item_img
      t.string :tags

      t.timestamps null: false
    end
  end
end
