puts "Seeding..."
5.times do
    restaurant = Restaurant.create(name:Faker::Restaurant.name, address:Faker::Address.full_address)

    random_pizzas = (0..4).to_a.shuffle
    3.times do |j|
        RestaurantPizza.create(price: Faker::Number.between(from: 1, to: 30), pizza_id:random_pizzas[j], restaurant:restaurant)
    end
end

5.times do
    ingredients = []
    5.times do
        ingredients << Faker::Dessert.topping
    end
    Pizza.create(name:Faker::Food.dish, ingredients:ingredients)
end

puts "Done Seeding!"
