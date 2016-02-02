class Recipe < ActiveRecord::Base
 belongs_to :chef
 #validates :recipe, presence: true
# validates :chef_id, presence: true
  #validates :name, presence: true, length: {minimum: 5, maximum: 100}
  #validates :summary, presence: true, length: {minimum: 10, maximum: 151}
   #validates :description, presence: true, length: {minimum: 20, maximum: 500}
   #validates :recepten, presence: true
  #validates :chef_id, presence: true
  #validates :naam, presence: true
  #validates :overzicht, presence: true
  # :desc, presence: true
 
end