# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Dish.create name: 'rare beef & brisket pho', img_url: 'https://s3-media3.fl.yelpcdn.com/bphoto/q-WBn9IMYOc8AzmaeUIRcg/o.jpg', restaurant: 'pho flinders express'


Dish.create name: 'lemongrass chicken rice',
  img_url: 'https://img.taste.com.au/un6VB2XM/taste/2016/11/warm-vietnamese-lemongrass-chicken-salad-106091-1.jpeg',
  restaurant: 'pho & roll'

Dish.create name: 'pork belly bowl',
  img_url: 'https://www.earlcanteen.com.au/wp-content/uploads/2016/05/Pork-1.jpg',
  restaurant: 'earl canteen'