require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |index|
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
  articles = Article.create(category_id: index + 1, title: Faker::Beer.name, content: Faker::Beer.alcohol, user_id: index + 1)
# end

# 5.times do |index|
  category = Category.create!(title: Faker::Color.color_name)
 end

15.times do |index|
  comments = Comment.create(article_id: index + 1, content: Faker::FunnyName.name, user_id: index + 1)
  likes = Like.create(user_id: index + 1, article_id: index + 1)
  comments = Comment.create(content: Faker::FunnyName.name, user_id: index + 1)
  likes = Like.create(user_id: index + 1)
end
