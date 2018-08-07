class Dish < ApplicationRecord
  validates :name, presence: true, length: { in: 3..3000 }, allow_blank: false
  validates :restaurant, presence: true, length: { in: 3..3000 }, allow_blank: false
  validates :img_url, presence: true, length: { in: 3..3000 }, allow_blank: false
 
end
