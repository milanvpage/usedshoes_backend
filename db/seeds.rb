# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


jordan_pink_1 = Shoe.find_or_create_by(name: "Pink Jordan's", brand: "Nike", yearfounded: "2020", color: "Pink and Black", size: "Kids 2y", design: "customized Pink Jordyn mid 1's, pink foundation and black Nike Swoosh and black outline", condition:"are in Good/Clean conditon, have been worn Twice", image_url:"https://i.ebayimg.com/images/g/bpsAAOSwXaBhHDBt/s-l640.jpg")

black_air_forces = Shoe.find_or_create_by(name: "Black AirForce Mens", brand: "Nike", yearfounded: "2000", color: "Black", size: "Mens 11", design: "All Black Mens throwback Air Force Ones", condition:"Great Condition, never been worn", image_url:"https://mercari-images.global.ssl.fastly.net/photos/m94375957037_1.jpg?width=1024&height=1024&format=pjpg&auto=webp&fit=crop&_=1590345405")

Comment.create(title:"Dope Jordyn 1's", description:"WOWWWW these are Dope I need to get my daughter a Pair", shoe: jordan_pink_1)

Comment.create(title:"Old School", description: "These are a big throwback", shoe: black_air_forces)

Comment.create(title:"Damnnn", description: "These look like they're in great condition", shoe: jordan_pink_1)


