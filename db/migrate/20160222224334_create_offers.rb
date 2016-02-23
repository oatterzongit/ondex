class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.text :offer_desc

      t.timestamps null: false
    end
  end
end
