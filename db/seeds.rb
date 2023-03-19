puts "Seeding..."
5.times do
    restaurant = Restaurant.create(name:Faker::Restaurant.name, address:Faker::Address.full_address)
    ingredients = []
    5.times do
        ingredients << Faker::Dessert.topping
    end
    Pizza.create(name:Faker::Food.dish, ingredients:ingredients.join(','))
end

5.times do |i|
    random_pizzas = (1..5).to_a.shuffle
    3.times do |j|
        RestaurantPizza.create(price:Faker::Number.between(from: 1, to: 30), pizza_id:random_pizzas[j], restaurant_id:i+1)
    end
end

puts "Done Seeding!"
