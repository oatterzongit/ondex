# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Auction.destroy_all

User.create(
  f_name: "Oat",
  l_name: "Asdon",
  username: "oatmealz",
  email: "oat@oatmealz.com",
  admin: true,
  auction_count: 200,
  password_digest: "$2a$10$aL2G0qu4yzmyNZUG5KsD2u1hzAPif1J1FNlQh1v2uREUz5aRAyC46"
)

User.create(
  f_name: "Andrew",
  l_name: "Asdon",
  username: "ArdwenDonas",
  email: "andrew@oatmealz.com",
  admin: true,
  auction_count: 1,
  password_digest: "$2a$10$aL2G0qu4yzmyNZUG5KsD2u1hzAPif1J1FNlQh1v2uREUz5aRAyC46"
)

User.create(
  f_name: "Jacqueline",
  l_name: "Asdon",
  username: "MamaJay",
  email: "jacqueline@oatmealz.com",
  admin: true,
  auction_count: 300,
  password_digest: "$2a$10$aL2G0qu4yzmyNZUG5KsD2u1hzAPif1J1FNlQh1v2uREUz5aRAyC46"
)

Auction.create(
  item_name: "Item One",
  item_desc: "Item One Descriptions, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  item_img: "paperclip_functionality_goes_here",
  tags: "tag1" "tag2" "tag3"
)
