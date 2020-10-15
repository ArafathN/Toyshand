# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

puts 'Cleaning database...'

Toy.destroy_all

puts 'Creating users...'
users_attributes = [
  {
  email: 'nguyen@gmail.com',
  password: '123456'
  },

  {email: 'kayis@gmail.com',
  password: '123456'
  }
]

Toy.create!(
  name: 'Barbie in the World',
  description: 'Play with your best friend and make new friends ! ',
  picture_url: 'https://images.unsplash.com/photo-1563475454428-db1b68095419?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
  price: 10,
  availability: true, 
  condition: 'Good',
  category:' +3 years old',
  user: User.find_by(email: 'nguyen@gmail.com')
)

Toy.create!(
  name: 'Buzz Lightyear',
  description: 'Play with your best friend and make new friends ! ',
  picture_url: 'https://images.unsplash.com/photo-1581557991964-125469da3b8a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=759&q=80',
  price: 10,
  availability: true, 
  condition: 'Good',
  category:' +3 years old',
  user: User.find_by(email: 'nguyen@gmail.com')
)

Toy.create!(
  name: 'RubiKube',
  description: 'Play with your best friend and make new friends ! ',
  picture_url: 'https://images.unsplash.com/photo-1496354265829-17b1c7b7c363?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1036&q=80',
  price: 10,
  availability: true, 
  condition: 'Good',
  category:'+6 years old',
  user: User.find_by(email: 'nguyen@gmail.com')
  
)

Toy.create!(
  name: 'RubiKube',
  description: 'Play with your best friend and make new friends ! ',
  picture_url: 'https://images.unsplash.com/photo-1598541264502-84dc6aa2fb87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=282&q=80',
  price: 10,
  availability: true, 
  condition: 'Good',
  category:'+6 years old',
  user: User.find_by(email: 'nguyen@gmail.com')
)


Toy.create!(
  name: 'Lego',
  description: 'Build your imagination !',
  picture_url: 'https://images.unsplash.com/photo-1587654780291-39c9404d746b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
  price: 10,
  availability: true, 
  condition: 'Good',
  category:'+3 years old',
  user: User.find_by(email: 'nguyen@gmail.com')
)


Toy.create!(
  name: 'Nintendo Figures',
  description: 'Create your story  !',
  picture_url: 'https://images.unsplash.com/photo-1566576912321-d58ddd7a6088?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
  price: 30,
  availability: true, 
  condition: 'Good',
  category:'+6 years old',
  user: User.find_by(email: 'nguyen@gmail.com')
)

Toy.create!(
  name: 'Teddy Bear',
  description: 'Make this teddy your Friend for ever',
  picture_url: 'https://images.unsplash.com/photo-1556012018-50c5c0da73bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
  price: 20,
  availability: true, 
  condition: 'Good',
  category:'+2 years old',
  user: User.find_by(email: 'nguyen@gmail.com')
)


Toy.create!(
  name: 'Batman',
  description: 'Fight the world with Batman',
  picture_url: 'https://images.unsplash.com/photo-1594736797933-d0501ba2fe65?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=674&q=80',
  price: 20,
  availability: true, 
  condition: 'Good',
  category:'+2 years old',
  user: User.find_by(email: 'nguyen@gmail.com')
)

Toy.create!(
  name: 'Nintendo',
  description: 'Fight the world with Batman',
  picture_url: 'https://images.unsplash.com/photo-1566576912323-1089a9627bca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  price: 20,
  availability: true, 
  condition: 'Good',
  category:'+2 years old',
  user: User.find_by(email: 'nguyen@gmail.com')
)


Toy.create!(
  name: 'Nintendo',
  description: 'Fight the world with Batman',
  picture_url: 'https://images.unsplash.com/photo-1566576912323-1089a9627bca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  price: 30,
  availability: true, 
  condition: 'Good',
  category:'+2 years old',
  user: User.find_by(email: 'kayis@gmail.com')
)


Toy.create!(
  name: 'Color Pencils',
  description: 'Draw your imagination',
  picture_url: 'https://images.unsplash.com/photo-1513542789411-b6a5d4f31634?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80',
  price: 30,
  availability: true, 
  condition: 'Good',
  category:'+2 years old',
  user: User.find_by(email: 'kayis@gmail.com')
)