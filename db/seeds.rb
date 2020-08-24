DishTag.destroy_all
Restaurant.destroy_all
Dish.destroy_all
Tag.destroy_all

# r1 = Restaurant.create(name: "Chicago Diner")
# r1.dishes << Dish.create(name: "Hotdog")
# r2 = Restaurant.create(name: "Medici's")
# r3 = Restaurant.create(name: "Giordano's")
# r4 = Restaurant.create(name: "Strings Ramen")
# r5 = Restaurant.create(name: "Noodles")
# r6 = Restaurant.create(name: "Shinju Sushi")
# r7 = Restaurant.create(name: "Kikuya")
# r8 = Restaurant.create(name: "Curry House")
# r9 = Restaurant.create(name: "Urban Vegan")
# r10 = Restaurant.create(name: "Glen's Diner")
# r11 = Restaurant.create(name: "Disco Tacos")
# r12 = Restaurant.create(name: "Lee's Wok")
# r13 = Restaurant.create(name: "Kaya Sushi")
# r14 = Restaurant.create(name: "Seoul Taco")
# r15 = Restaurant.create(name: "Tango Sur")
# r16 = Restaurant.create(name: "Cafecitos")
# r17 = Restaurant.create(name: "5411 Empenadas")
# r18 = Restaurant.create(name: "Cold Fire Pizza")
# r19 = Restaurant.create(name: "McDonald's")
# r20 = Restaurant.create(name: "Sweetgreen")

20.times do 
    Restaurant.create(
        name: Faker::Restaurant.name
    )
end

200.times do 
    Dish.create(
        name: Faker::Food.dish,
        restaurant_id: Restaurant.ids.sample
    )
end

tag_array = ["spicy", "vegetarian", "vegan", "gluten free", "dairy free", "sweet", "mild", "nut free", "seafood", "steakhouse"]
tag_array.each do |tag|
    Tag.create(name: tag)
end

Dish.all.each do |dish_instance|
    dish_instance.id

tags = Tag.all.shuffle
    
3.times do
    DishTag.create(dish_id: dish_instance.id, tag_id: tags.pop.id)
end
end

tag1 = Tag.create(name: "super super spicy")
