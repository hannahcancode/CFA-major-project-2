# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create! :email => 'user@user.com', :password => '123456', :password_confirmation => '123456'
user1 = User.create! :email => 'member@member.com', :password => '123456', :password_confirmation => '123456'
user2 = User.create! :email => 'admin@admin.com', :password => '123456', :password_confirmation => '123456'

user2.add_role :admin

user.profile.update_attributes :name => 'Charles Darwin', :bio => 'I love looking at plants', :user_id => 1, :avatar => ''
user1.profile.update_attributes :name => 'Gregory Mendel', :bio => 'Beans are lyf', :user_id => 2, :avatar => ''
user2.profile.update_attributes :name => 'Norman Borlaug', :bio => 'Green is where it\'s at', :user_id => 3, :avatar => ''

space = Space.create! :name => 'Cool Garden', :description => 'This is a really lovely garden that I can\'t use anymore', :price => 2.0, :user_id => 1
space1 = Space.create! :name => 'Rooftop Times!', :description => 'Nice rooftop, never gets used. Come grow some stuff on it.', :price => 3.0, :user_id => 2
space2 = Space.create! :name => 'Hydroponics', :description => 'Come grow hydro with me.', :price => 4.2, :user_id => 3
