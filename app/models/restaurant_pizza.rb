class RestaurantPizza < ApplicationRecord
    belongs_to :pizza
    belongs_to :restaurant
    
    validates :price, inclusion: {in:1..30, message:"Price must be between 1 - 30"}
end
