class RestaurantPizza < ApplicationRecord
    validates :price, inclusion: 1..30
end
