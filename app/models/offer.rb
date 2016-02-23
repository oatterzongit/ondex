class Offer < ActiveRecord::Base
  belongs_to :auctions
  belongs_to :users
end
