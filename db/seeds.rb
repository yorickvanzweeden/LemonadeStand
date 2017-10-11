# Creating users
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

# Creating categories
Category.create(name: "Category1", description: "Description1")
Category.create(name: "Category2", description: "Description2")
Category.create(name: "Category3", description: "Description3")


# Creating products
short_description = "Delicious cookies, handmade with butter and vegan ingredients!"
long_description = " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse suscipit nisi eu ligula molestie maximus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer bibendum sit amet ante malesuada semper. Praesent a bibendum mi, sed pellentesque lectus. Quisque ac ante nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque tempor justo nec nunc malesuada, non sodales quam rhoncus. Phasellus dolor mi, maximus vitae dapibus porta, fringilla in felis. Maecenas vitae bibendum lacus. Vivamus et velit sed sapien porta pharetra nec at lectus. Nulla pretium urna et sem pellentesque, vitae eleifend lacus lacinia. Pellentesque vel imperdiet ex. Sed pretium non diam non molestie. Mauris semper auctor neque, in suscipit erat sagittis nec. Aliquam erat volutpat. Curabitur consequat, magna non molestie tempor, massa massa vulputate orci, vitae pulvinar mi odio et justo. Donec malesuada neque sed orci pretium dapibus. Ut laoreet, odio vel maximus rhoncus, nulla elit pretium lacus, sit amet consectetur mauris sapien cursus ante. Suspendisse sit amet lectus quis justo posuere scelerisque at tempus quam. Vivamus dapibus quam sit amet libero rutrum feugiat. Nullam venenatis nisi porttitor felis porta, sodales vehicula purus mollis. Aenean posuere pretium porta. "

Product.create(name: "Product1", category_id: 1, price: 1, cook_id: 3, short_description: short_description, description: long_description)
Product.create(name: "Product2", category_id: 1, price: 2, cook_id: 3, short_description: short_description, description: long_description)
Product.create(name: "Product3", category_id: 2, price: 3, cook_id: 3, short_description: short_description, description: long_description)
Product.create(name: "Product4", category_id: 2, price: 4, cook_id: 4, short_description: short_description, description: long_description)
Product.create(name: "Product5", category_id: 3, price: 5, cook_id: 4, short_description: short_description, description: long_description)
Product.create(name: "Product6", category_id: 3, price: 6, cook_id: 4, short_description: short_description, description: long_description)