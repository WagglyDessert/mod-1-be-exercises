fridge_items_1 = ["milk", "eggs", "eggs","eggs", "eggs",
                  "eggs", "eggs", "avocado", "avocado", "tortilla",
                  "tortilla", "tortilla", "tortilla", "tortilla",
                  "tortilla", "tortilla", "tortilla", "tortilla"]

# Looking at the collection above:

# 1. What is problematic about listing `fridge_items_1`
# as an array structured grocery list?

-you have to write "tortilla" seven times if you want seven tortillas
# 2. What might be a more readable way to structure this?
-hashes! they can store the value (in this case, quantity) of tortillas needed!
"milk" => 1,
"eggs" => 6,
"avocado" => 2,
"tortilla" => 9,
