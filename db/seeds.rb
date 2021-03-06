# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create! first_name: 'John', last_name: 'Doe', email: 'admin@example.com', password: 'password', password_confirmation: 'password', role: User.roles['administrator']
user2 = User.create! first_name: 'Jane', last_name: 'Doe', email: 'user@example.com', password: 'password', password_confirmation: 'password', role: User.roles['user']