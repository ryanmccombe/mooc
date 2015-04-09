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
Category.create(name: 'Design', slug: 'design')
Category.create(name: 'HTML/CSS', slug: 'htmlcss')
Category.create(name: 'JavaScript', slug: 'javascript')
Category.create(name: 'PHP', slug: 'php')
Category.create(name: 'Python', slug: 'python')
Category.create(name: 'Ruby', slug: 'ruby')
Category.create(name: 'C#', slug: 'c-sharp')
Category.create(name: 'Java', slug: 'java')
Category.create(name: 'Objective-C', slug: 'objective-c')
Category.create(name: 'Android', slug: 'android')
Category.create(name: 'iOS', slug: 'ios')
Category.create(name: 'jQuery', slug: 'jquery')
Category.create(name: 'AngularJS', slug: 'angularjs')
Category.create(name: 'React', slug: 'react')
Category.create(name: 'EnberJS', slug: 'ember')


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
Upvote.create(user: User.second, link: Link.first)
Upvote.create(user: User.second, link: Link.second)
