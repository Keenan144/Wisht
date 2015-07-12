# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Wish.new(name: "World Peace",  user_id: 1, content: "Can we all love?", user_id: 1).save
Wish.new(name: "World Peace",  user_id: 1, content: "Can we all love?", user_id: 1).save
Wish.new(name: "World Peace",  user_id: 1, content: "Can we all love?", user_id: 2).save
Wish.new(name: "World Peace",  user_id: 1, content: "Can we all love?", user_id: 2).save
Wish.new(name: "World Peace",  user_id: 1, content: "Can we all love?", user_id: 2).save
User.new(name: "Wisht Test User", email: "wisht@test.com", password_digest: "123456", login: DateTime.now).save
User.new(name: "Wisht Test User 2", email: "wisht@test2.com", password_digest: "123456", login: DateTime.now).save