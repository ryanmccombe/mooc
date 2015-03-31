# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
User.create(name: 'Ryan', password: 'test', password_confirmation: 'test', admin: true)
User.create(name: 'Dave', password: 'test', password_confirmation: 'test')
User.create(name: 'John', password: 'test', password_confirmation: 'test')

Category.destroy_all
Category.create(name: 'JavaScript', slug: 'javascript')
Category.create(name: 'Ruby', slug: 'ruby')

Link.destroy_all
users = User.all
categories = Category.all
users.each do |user|
  categories.each do |category|
    Link.create(user_id: user.id, category: category, title: "#{user.name}'s link about #{category.name}", body: "This is a link from #{user.name} about #{category.name}", url: 'http://www.google.com')
  end
end

Comment.destroy_all
Comment.create(body: 'Test Comment', link: Link.first, user: User.first)

Upvote.destroy_all
Upvote.create(user: User.first, link: Link.first)
