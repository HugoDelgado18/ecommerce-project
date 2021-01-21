# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(firstname: 'Hugo', lastname: 'Delgado', email: 'testAccount@gmail.com', password: '123', address: '123 ABC', zipcode: '11022')
u2 = User.create(firstname: 'Talia', lastname: 'Renteria', email: 'testAccount2@gmail.com', password: '123', address: '123 ABC', zipcode: '11022')


p1 =  Product.create(brand: 'Samsung', department: 'electronics', title: 'Samgsung Monitor', description: '21 inches 1080p display', img_url: 'https://i.ebayimg.com/images/g/8lwAAOSwO-Jf0RL8/s-l640.jpg', in_stock: true, price: '90.00')
p2 =  Product.create(brand: 'Samsung', department: 'electronics', title: 'Samgsung Monitor', description: '21 inches 1080p display', img_url: 'https://m.media-amazon.com/images/I/81QpkIctqPL._AC_UY218_.jpg', in_stock: true, price: '90.00')
p3 =  Product.create(brand: 'Samsung', department: 'electronics', title: 'Samgsung Monitor', description: '21 inches 1080p display', img_url: 'https://m.media-amazon.com/images/I/91fAU6mxFsL._AC_UY218_.jpg', in_stock: true, price: '90.00')
p4 =  Product.create(brand: 'Samsung', department: 'electronics', title: 'Samgsung Monitor', description: '21 inches 1080p display', img_url: 'https://m.media-amazon.com/images/I/91ubktnbNVL._AC_UY218_.jpg', in_stock: true, price: '90.00')
p5 =  Product.create(brand: 'Samsung', department: 'electronics', title: 'Samgsung Monitor', description: '21 inches 1080p display', img_url: 'https://m.media-amazon.com/images/I/81Hs-YIseFL._AC_UY218_.jpg', in_stock: true, price: '90.00')
p6 =  Product.create(brand: 'Samsung', department: 'electronics', title: 'Samgsung Monitor', description: '21 inches 1080p display', img_url: 'https://m.media-amazon.com/images/I/712ZOa8Ze2L._AC_UY218_.jpg', in_stock: true, price: '90.00')
p7 =  Product.create(brand: 'Samsung', department: 'electronics', title: 'Samgsung Monitor', description: '21 inches 1080p display', img_url: 'https://m.media-amazon.com/images/I/71MXPu-97kL._AC_UY218_.jpg', in_stock: true, price: '90.00')

# p8 =  Product.create(brand: 'Lenovo', department: 'electronics', title: 'Lenovo IdeaCentre AIO', description: '24" All-in-One Computer', img_url: 'https://images-na.ssl-images-amazon.com/images/I/81eRAX3sB6L._AC_SL1500_.jpg')


