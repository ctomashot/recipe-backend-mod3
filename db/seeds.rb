# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Recipe.destroy_all
Comment.destroy_all
Rating.destroy_all


brodrick = User.create(name: "Brodrick", username: "brodrick1")
ronalyssa = User.create(name: "Ronalyssa", username: "ronalyssa2")
oscar = User.create(name: "Oscar", username: "oscar3")
cole = User.create(name: "Cole", username: "cole4")

#VEGETARIAN
rec1 = Recipe.create(user_id: brodrick.id, title: "Black Bean Quesadillas", content: "Combine beans, cheese and 1/4 cup salsa in a medium bowl. Place tortillas on a work surface. Spread 1/2 cup filling on half of each tortilla. Fold tortillas in half, pressing gently to flatten. Heat 1 teaspoon oil in a large nonstick skillet over medium heat. Add 2 quesadillas and cook, turning once, until golden on both sides, 2 to 4 minutes total. Transfer to a cutting board and tent with foil to keep warm. Repeat with the remaining 1 teaspoon oil and quesadillas. Serve the quesadillas with avocado and the remaining salsa.", image: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F44%2F2019%2F08%2F26232447%2F3926485.jpg&w=1200&c=sc&poi=face&q=85", ingredients: "15-ounce can black beans, rinsed, Half cup shredded Monterey Jack cheese, preferably pepper Jack, Half cup prepared fresh salsa, divided, Four 8-inch whole-wheat tortillas, 2 teaspoons canola oil, divided, 1 ripe avocado, diced", vegetarian: true)

rec2 = Recipe.create(user_id: ronalyssa.id, title: "", content: "", image: "", ingredients: "", vegetarian: true)
rec3 = Recipe.create(user_id: oscar.id, title: "", content: "", image: "", ingredients: "", vegetarian: true)
rec4 = Recipe.create(user_id: cole.id, title: "", content: "", image: "", ingredients: "", vegetarian: true)

#VEGAN
rec5 = Recipe.create(user_id: brodrick.id, title: "Beet Chips", content: "Preheat your oven to 325. Wash your beets and slice them. Using paper towels pat your beet chips to get the water out. You want to make sure they don/'t come out soggy. Add your oil, salt and herbs to your chips. Lay your chips on a baking tray. Bake your chips for 20 to 30 minutes or until they look nice and crispy. Let them cool down. Once cool, add your favorite spices.", image: "https://i2.wp.com/www.brokefoodies.com/wp-content/uploads/2016/10/Beet-Chips-1.jpg?w=680&ssl=1", ingredients: "2 Medium to large sized beets. Half Tbsp of grapeseed oil. Sea salt to taste. Any spices and herbs of your choice.", vegan: true)

rec6 = Recipe.create(user_id: ronalyssa.id, title: "", content: "", image: "", ingredients: "", vegan: true)
rec7 = Recipe.create(user_id: oscar.id, title: "", content: "", image: "", ingredients: "", vegan: true)
rec8 = Recipe.create(user_id: cole.id, title: "", content: "", image: "", ingredients: "", vegan: true)

#MEAT
rec9 = Recipe.create(user_id: brodrick.id, title: "Cranberry Maple Chicken", content: "In a small saucepan, combine the cranberries, water and sugar. Cook over medium heat until berries pop, about 15 minutes. Meanwhile, sprinkle chicken with salt and pepper. In a large nonstick skillet, cook chicken in oil over medium heat until juices run clear, 4-5 minutes on each side. Stir syrup into cranberry mixture; serve with chicken.", image: "https://www.tasteofhome.com/wp-content/uploads/2018/01/Cranberry-Maple-Chicken_EXPS_SDDJ19_32962_C07_13_6b-5-696x696.jpg", ingredients: "2 cups fresh or frozen cranberries, 3/4 cup water, 1/3 cup sugar, 6 four ounce boneless skinless chicken breast halves, Half teaspoon salt, 1/4 teaspoon pepper, 1 tablespoon canola oil, 1/4 cup maple syrup")

rec10 = Recipe.create(user_id: ronalyssa.id, title: "", content: "", image: "", ingredients: "")
rec11 = Recipe.create(user_id: oscar.id, title: "", content: "", image: "", ingredients: "")
rec12 = Recipe.create(user_id: cole.id, title: "", content: "", image: "", ingredients: "")
    

Comment.create(user_id: cole.id, recipe_id: rec1.id, content: "Love it!")
Comment.create(user_id: oscar.id, recipe_id: rec2.id, content: "Love this recipe! Added additional ingredients for taste.")
Comment.create(user_id: ronalyssa.id, recipe_id: rec3.id, content: "Taste pretty good but took longer to prepare than expected.")
Comment.create(user_id: brodrick.id, recipe_id: rec4.id, content: "Wouldn't make again but there are worse things to eat.")
Comment.create(user_id: cole.id, recipe_id: rec5.id, content: "No, just no.")
Comment.create(user_id: oscar.id, recipe_id: rec6.id, content: "Fast and easy to make as well as delicious!")
Comment.create(user_id: ronalyssa.id, recipe_id: rec7.id, content: "Very quick to make, I'd change a couple ingredients though.")
Comment.create(user_id: brodrick.id, recipe_id: rec8.id, content: "Eh, it was alright.")
Comment.create(user_id: cole.id, recipe_id: rec9.id, content: "I like all food but this just didn't sit well.")
Comment.create(user_id: oscar.id, recipe_id: rec10.id, content: "Instructions were confusing and complicated.")
Comment.create(user_id: ronalyssa.id, recipe_id: rec11.id, content: "Everything was perfect!")
Comment.create(user_id: brodrick.id, recipe_id: rec12.id, content: "Need more spices but overall very good!")

Rating.create(user_id: cole.id, recipe_id: rec1.id, rating: 5)
Rating.create(user_id: oscar.id, recipe_id: rec2.id, rating: 4)
Rating.create(user_id: ronalyssa.id, recipe_id: rec3.id, rating: 3)
Rating.create(user_id: brodrick.id, recipe_id: rec4.id, rating: 2)
Rating.create(user_id: cole.id, recipe_id: rec5.id, rating: 1)
Rating.create(user_id: oscar.id, recipe_id: rec6.id, rating: 5)
Rating.create(user_id: ronalyssa.id, recipe_id: rec7.id, rating: 4)
Rating.create(user_id: brodrick.id, recipe_id: rec8.id, rating: 3)
Rating.create(user_id: cole.id, recipe_id: rec9.id, rating: 2)
Rating.create(user_id: oscar.id, recipe_id: rec10.id, rating: 1)
Rating.create(user_id: ronalyssa.id, recipe_id: rec11.id, rating: 5)
Rating.create(user_id: brodrick.id, recipe_id: rec12.id, rating: 4)
    
