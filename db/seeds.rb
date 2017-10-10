# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create( email: "admin@admin.nl", role: "admin", password: 'admin@admin.nl', password_confirmation: 'admin@admin.nl')
admin.skip_confirmation!
admin.save!

user = User.create( email: "user@user.nl", role: "user", password: 'user@user.nl', password_confirmation: 'user@user.nl')
user.skip_confirmation!
user.save!

cook = User.create( email: "cook@cook.nl", role: "cook", password: 'cook@cook.nl', password_confirmation: 'cook@cook.nl')
cook.skip_confirmation!
cook.save!

cook2 = User.create( email: "cook2@cook.nl", role: "cook", password: 'cook2@cook.nl', password_confirmation: 'cook2@cook.nl')
cook2.skip_confirmation!
cook2.save!

Category.create(name: "Category1", description: "Description1")
Category.create(name: "Category2", description: "Description2")
Category.create(name: "Category3", description: "Description3")

Product.create(name: "Product1", category_id: 1, price: 1, cook_id: 3)
Product.create(name: "Product2", category_id: 1, price: 2, cook_id: 3)
Product.create(name: "Product3", category_id: 2, price: 3, cook_id: 3)
Product.create(name: "Product4", category_id: 2, price: 4, cook_id: 4)
Product.create(name: "Product5", category_id: 3, price: 5, cook_id: 4)
Product.create(name: "Product6", category_id: 3, price: 6, cook_id: 4)
