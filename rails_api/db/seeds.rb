# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
User.create(name: 'Ryan', password: 'test', password_confirmation: 'test')
User.create(name: 'Dave', password: 'test', password_confirmation: 'test')
User.create(name: 'John', password: 'test', password_confirmation: 'test')

Category.destroy_all
Category.create(name: 'JavaScript', slug: 'javascript')

Link.destroy_all
users = User.all
users.each do |user|
  Link.create(user_id: user.id, category_id: Category.first.id, title: "#{user.name}'s link", body: "This is a link from #{user.name}", url: 'http://www.google.com')
end
