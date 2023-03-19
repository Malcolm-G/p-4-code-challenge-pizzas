class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        render json: Restaurant.all
    end

    def show
        render json: found_restaurant
    end

    def destroy
        restaurant = found_restaurant
        restaurant.destroy
        head :no_content

    private

    def found_restaurant
        Restaurant.find(params[:id])
    end

    def render_not_found_response
        render json: { error: "Restaurant not found" }, status: :not_found
    end
end
