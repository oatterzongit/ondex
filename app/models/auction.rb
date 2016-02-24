class Auction < ActiveRecord::Base
  belongs_to :users
  has_many :offers

  has_attached_file :item_img, styles: { medium: "600x600>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :item_img, content_type: /\Aimage\/.*\Z/
# ask about if you can restrict what file type to be attached
end
