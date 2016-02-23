class User < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :f_name, presence: true
  validates :l_name, presence: true

  has_many :auctions, dependent: :destroy
  has_many :offers, dependent: :destroy
end
