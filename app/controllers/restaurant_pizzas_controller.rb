class RestaurantPizzasController < ApplicationController
    wrap_parameters format: []

    def create
        restaurant_pizza = RestaurantPizza.create(restaurant_pizza_params)
        render json: restaurant_pizza
    end

    private

    def restaurant_pizza_params
        params.permit(:price,:pizza_id,:restaurant_id)
    end
end
