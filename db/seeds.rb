# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


jordan_pink_1 = Shoe.create(brand: "Nike", yearfounded: "2020", color: "Pink and Black", size: "Women's 8 1/2", design: "customized Pink Jordyn mid 1's, pink foundation and black Nike Swoosh and black outline", condition:"are in Good/Clean conditon, have been worn Twice")

black_air_forces = Shoe.create(brand: "Nike", yearfounded: "2000", color: "Black", size: "Mens 11", design: "All Black Mens throwback Air Force Ones", condition:"Great Condition, never been worn")

Comment.create(title:"Dope Jordyn 1's", description:"WOWWWW these are Dope I need to get my daughter a Pair", shoe: jordan_pink_1)

Comment.create(title:"Old School", description: "These are a big throwback", shoe: black_air_forces)

Comment.create(title:"Damnnn", description: "These look like they're in great condition", shoe: jordan_pink_1)


