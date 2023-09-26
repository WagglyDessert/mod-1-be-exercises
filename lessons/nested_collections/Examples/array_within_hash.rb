pizza_toppings = {
  veggies: ["green peppers", "jalapeño", "mushrooms"],
  protein: ["pepperoni", "sausage", "sardines"],
  fruit: ["pineapple"]
}

# 1. what is pizza_toppings.count
#3
# 2. what is pizza_toppings.values
#[["green peppers", "jalapeño", "mushrooms"], ["pepperoni", "sausage", "sardines"], ["pineapple"]]
# 3. how can I access the element “pineapple”
#pizza_toppings.values[-1]
#pizza_toppings.values[2]
# 4. how can I add the element “olives” to the key “veggies”?
#pizza_toppings[:veggies] + ["olives"]
#pizza_toppings[:veggies] << ["olives"]

