DROP DATABASE IF EXISTS cookbook_db;

CREATE DATABASE cookbook_db;
USE cookbook_db;

CREATE TABLE recipes (
    id int NOT NULL AUTO_INCREMENT,
    recipe_name VARCHAR(200) NOT NULL,
    ingredients VARCHAR(5000),
    directions VARCHAR(5000) NOT NULL,
    recipeImage VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ingredients (
    id int NOT NULL AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    season VARCHAR(200) NULL,
    PRIMARY KEY (id)
);

INSERT INTO recipes (recipe_name, ingredients, directions, recipeImage)


-- TODO: '1,2,3' need to be split on the comma and conversted to an array referencing the ingredients table
VALUES
('Barbecued Shrimp','[{\"ingredients\":61,\"amount\":\"1 lb.\"},{\"ingredients\":216,\"amount\":\"1 tsp.\"},{\"ingredients\":130,\"amount\":\"1 tsp.\"},{\"ingredients\":123,\"amount\":\"1/4 tsp.\"},{\"ingredients\":217,\"amount\":\"1/2 tsp.\"},{\"ingredients\":155,\"amount\":\"1/2 tsp.\"},{\"ingredients\":220,\"amount\":\"1/2 tsp.\"},{\"ingredients\":147,\"amount\":\"1/8 tsp.\"},{\"ingredients\":245,\"amount\":\"1 stick plus 5 Tb.\"},{\"ingredients\":11,\"amount\":\"1 1/2 tsp. minced\"},{\"ingredients\":163,\"amount\":\"1 tsp.\"},{\"ingredients\":167,\"amount\":\"1/2 cup (chicken stock is okay too)\"},{\"ingredients\":252,\"amount\":\"1/4 cup at room temp.\"}]','1.  Clean shrimp, shells on or off\n\n2. Combine seasonings in small bowl\n\n3. Combine 1 stick butter, worcestershire sauce and seasonings in a large skillet over high heat.  When butter is melted, add shrimp.\n\n4.  Cook for 2 minutes, shaking the pan in a back and forth motion.\n\n5. Add the remaining butter and the stock; cook and shake for 2 minutes\n\n6. Add the beer, cook and shake for 1 minute.  Remove from heat serve immediately.\n\n7. Serve in bowls with french bread or rice.\n\nServes 2-4.','efd013b7c505edf9ffa3b282a3fc5f0d'),
('Chocolate Chip Cookies','[{\"ingredients\":245,\"amount\":\"1 cup, softened\"},{\"ingredients\":127,\"amount\":\"1 cup\"},{\"ingredients\":128,\"amount\":\"1 cup, packed\"},{\"ingredients\":192,\"amount\":\"2\"},{\"ingredients\":157,\"amount\":\"2 tsp.\"},{\"ingredients\":135,\"amount\":\"1 tsp.\"},{\"ingredients\":123,\"amount\":\"1/2 tsp.\"},{\"ingredients\":124,\"amount\":\"3 cups\"},{\"ingredients\":261,\"amount\":\"2 cups\"},{\"ingredients\":174,\"amount\":\"1 cup chopped\"}]','1. Preheat oven to 350 F/75 C\n2. Cream together butter, white and brown sugar until smooth.\n3. Beat in eggs one at a time, then add vanilla.\n4. Add baking soda and salt to batter.\n5. Stir in flour, chocolate chips.\n6. Drop by large spoonfuls onto ungreased pans.\n7. Bake for ~11 minutes in preheated oven or until edges are browned.\n\nMakes 3 doz.','da24cccdfb2893abf45352e79058b5f8'),
('Lemon Meringue Pie', '[{\"ingredients\":127,\"amount\":\"1 cup\"},{\"ingredients\":243,\"amount\":\"3 Tbs.\"},{\"ingredients\":182,\"amount\":\"1 1/4 (cold)\"},{\"ingredients\":213,\"amount\":\"3\"},{\"ingredients\":14,\"amount\":\"1 rind grated\"},{\"ingredients\":199,\"amount\":\"1/2 cup\"},{\"ingredients\":245,\"amount\":\"1 Tbs\"},{\"ingredients\":214,\"amount\":\"3\"},{\"ingredients\":127,\"amount\":\"1/3 cup\"}]', '1. Prebake pie crust according to directions.\n2. Mix 1 cup sugar and cornstarch.  Stir in water and egg yolks.  Cook over medium heat, stirring constantly until thick.  Boil 1 minute.\n3. Stir in lemon juice, zest and butter.  Cool.  Pour into shell.\n4. Beat egg whites until foamy.  Add 1/3 cup sugar, 1 tbs at a time.\n5. Spoon meringue onto filling.\n6. Bake at 350 F/175 C for 15 minutes.\n7. Cool\n\nServes 8', 'c6394cef4e9438e3bafc5430c682e28c'),
('Fresh Pea Soup','[{\"ingredients\":245,\"amount\":\"2 Tbs.\"},{\"ingredients\":105,\"amount\":\"2 cups (roughly 2 leeks)\"},{\"ingredients\":18,\"amount\":\"1 Cup (chopped)\"},{\"ingredients\":166,\"amount\":\"4 Cups\"},{\"ingredients\":19,\"amount\":\"5 Cups freshly shelled\"},{\"ingredients\":263,\"amount\":\"2/3 Cup (chopped, loosely packed)\"},{\"ingredients\":123,\"amount\":\"2 tsp.\"},{\"ingredients\":130,\"amount\":\"1/2 tsp.\"},{\"ingredients\":264,\"amount\":\"1/2 Cup\"},{\"ingredients\":265,\"amount\":\"1/2 Cup (chopped)\"},{\"ingredients\":267,\"amount\":\"For Serving\"}]','1. Heat the butter in a large saucepan, add the leeks and onion, and cook over medium-low heat for 5 to 10 minutes, until the onion is tender. Add the chicken stock, increase the heat to high, and bring to a boil. Add the peas and cook for 3 to 5 minutes, until the peas are tender. Off the heat, add the mint, salt, and pepper.\n2. Puree the soup in batches: place 1 cup of soup in a blender, place the lid on top, and puree on low speed. With the blender still running, open the vent hole in the lid and slowly add more soup until the blender is three-quarters full. Pour the soup into a large bowl and repeat until all the soup is pureed. Whisk in the creme fraiche and chives and taste for seasoning. Serve hot with garlic croutons.','bd31257c3bb662b48df24234cbdf3081'),
('Fresh Rhubarb Pie', '[{\"ingredients\":22,\"amount\":\"4 Cups (chopped)\"},{\"ingredients\":127,\"amount\":\"1 1/3 Cups\"},{\"ingredients\":124,\"amount\":\"6 Tbs.\"},{\"ingredients\":245,\"amount\":\"1 Tbs.\"}]', '1. Preheat oven to 450 degrees F (230 degrees C).\n2. Bring pie dough to room temp. for double crust pie\n3. Combine sugar and flour. Sprinkle 1/4 of it over pastry in pie plate. Heap rhubarb over this mixture. Sprinkle with remaining sugar and flour. Dot with small pieces of butter. Cover with top crust.\n4. Place pie on lowest rack in oven. Bake for 15 minutes. Reduce oven temperature to 350 degrees F (175 degrees C), and continue baking for 40 to 45 minutes. Serve warm or cold.', 'e6ed194ccd0cfc89377c30b724e37257'),
('Aloha Pineapple Chicken','[{\"ingredients\":137,\"amount\":\"1 1/2 lb boneless skinless breasts\"},{\"ingredients\":124,\"amount\":\"1 Tbs.\"},{\"ingredients\":144,\"amount\":\"1 Tbs.\"},{\"ingredients\":20,\"amount\":\"16 oz. (cut into chunks)\"},{\"ingredients\":243,\"amount\":\"1 1/2 tsp.\"},{\"ingredients\":244,\"amount\":\"1 Tbs.\"},{\"ingredients\":162,\"amount\":\"2 Tbs.\"},{\"ingredients\":130,\"amount\":\"1/4 tsp.\"},{\"ingredients\":236,\"amount\":\"3 Cups cooked\"}]','1. Follow cooking instructions for your rice to prepare while you are making the chicken.\n\n2. Cut the chicken into strips. Put the flour into a gallon bag and add the chicken. Shake to coat.\n\n3. Brown the chicken with the oil over medium heat in a skillet. Cook for 3-5 minutes each side or until cooked through and juices are clear. Set the chicken aside.\n\n4. While the chicken is cooking, drain the pineapple juice and reserve 1/4 cup. (You can discard the remaining juice or drink it.)\n\n5. Combine the cornstarch and 1/4 cup pineapple juice in a small bowl. Add to the skillet after you’ve removed the chicken. Add the honey, soy sauce, and pepper; stir well.\n\n6. Increase the heat to medium-high and cook and stir. Bring to a boil; cook and stir for another 30-60 seconds or until the juice mixture is thickened.\n\n7. Reduce the heat to medium and add the pineapple and chicken, heating through.\n\n8. Serve over rice.','936491b4d8583cd942a1e7a962e15bea'),
('Shrimp & Rice','[{\"ingredients\":236,\"amount\":\"2 cups\"},{\"ingredients\":61,\"amount\":\"1 lb.\"},{\"ingredients\":245,\"amount\":\"2 Tbs.\"},{\"ingredients\":8,\"amount\":\"2 Whole\"},{\"ingredients\":123,\"amount\":\"1/4 tps.\"}]','Cook rice according to directions.  Peel and devein the shrimp.  Cook shrimp in the pan with butter, salt, and carrots.  Eat!','/uploads/img.png');


INSERT INTO ingredients (name, season)

VALUES
('Apples', 'Spring'),
('Apricots', 'Spring'),
('Asparagus', 'Spring'),
('Avocados', 'Spring'),
('Bananas', 'Spring'),
('Broccoli', 'Spring'),
('Cabbage', 'Spring'),
('Carrots', 'Spring'),
('Celery', 'Spring'),
('Collard Greens', 'Spring'),
('Garlic', 'Spring'),
('Kale', 'Spring'),
('Kiwifruit', 'Spring'),
('Lemons', 'Spring'),
('Lettuce', 'Spring'),
('Limes', 'Spring'),
('Mushrooms', 'Spring'),
('Onions', 'Spring'),
('Peas', 'Spring'),
('Pineapples', 'Spring'),
('Radishes', 'Spring'),
('Rhubarb', 'Spring'),
('Spinach', 'Spring'),
('Strawberries', 'Spring'),
('Swiss Chard', 'Spring'),
('Turnips', 'Spring'),
('Halibut', 'Spring'),
('Sablefish', 'Spring'),
('Beets', 'Summer'),
('Bell Peppers', 'Summer'),
('Blackberries', 'Summer'),
('Blueberries', 'Summer'),
('Cantaloupe', 'Summer'),
('Carrots', 'Summer'),
('Celery', 'Summer'),
('Cherries', 'Summer'),
('Corn', 'Summer'),
('Cucumbers', 'Summer'),
('Eggplant', 'Summer'),
('Garlic', 'Summer'),
('Green Beans', 'Summer'),
('Honeydew Melon', 'Summer'),
('Lemons', 'Summer'),
('Lima Beans', 'Summer'),
('Limes', 'Summer'),
('Mangos', 'Summer'),
('Okra', 'Summer'),
('Peaches', 'Summer'),
('Plums', 'Summer'),
('Raspberries', 'Summer'),
('Strawberries', 'Summer'),
('Summer Squash', 'Summer'),
('Tomatillos', 'Summer'),
('Tomatoes', 'Summer'),
('Watermelon', 'Summer'),
('Zucchini', 'Summer'),
('Albacore tuna', 'Summer'),
('Anchovies', 'Summer'),
('Dungeness crab', 'Summer'),
('Halibut', 'Summer'),
('Oregon pink shrimp', 'Summer'),
('Sablefish', 'Summer'),
('Green Beans', 'Fall'),
('Kale', 'Fall'),
('Kiwifruit', 'Fall'),
('Lemons', 'Fall'),
('Lettuce', 'Fall'),
('Limes', 'Fall'),
('Mangos', 'Fall'),
('Mushrooms', 'Fall'),
('Onions', 'Fall'),
('Parsnips', 'Fall'),
('Pears', 'Fall'),
('Peas', 'Fall'),
('Pineapples', 'Fall'),
('Potatoes', 'Fall'),
('Pumpkin', 'Fall'),
('Radishes', 'Fall'),
('Raspberries', 'Fall'),
('Rutabagas', 'Fall'),
('Spinach', 'Fall'),
('Sweet Potatoes', 'Fall'),
('Yams', 'Fall'),
('Swiss Chard', 'Fall'),
('Turnips', 'Fall'),
('Winter Squash', 'Fall'),
('Anchovies', 'Fall'),
('Dungeness crab', 'Fall'),
('Halibut', 'Fall'),
('Oregon pink shrimp', 'Fall'),
('Sablefish', 'Fall'),
('Spiny lobster', 'Fall'),
('Apples', 'Winter'),
('Avocados', 'Winter'),
('Bananas', 'Winter'),
('Beets', 'Winter'),
('Brussels Sprouts', 'Winter'),
('Cabbage', 'Winter'),
('Carrots', 'Winter'),
('Celery', 'Winter'),
('Collard Greens', 'Winter'),
('Grapefruit', 'Winter'),
('Kale', 'Winter'),
('Kiwifruit', 'Winter'),
('Leeks', 'Winter'),
('Lemons', 'Winter'),
('Limes', 'Winter'),
('Onions', 'Winter'),
('Oranges', 'Winter'),
('Parsnips', 'Winter'),
('Pears', 'Winter'),
('Pineapples', 'Winter'),
('Potatoes', 'Winter'),
('Pumpkin', 'Winter'),
('Rutabagas', 'Winter'),
('Sweet Potatoes', 'Winter'),
('Yams', 'Winter'),
('Swiss Chard', 'Winter'),
('Turnips', 'Winter'),
('Winter Squash', 'Winter'),
('Dungeness crab', 'Winter'),
('Spiny lobster', 'Winter'),
('Salt','Not Applicable'),
('All-Purpose Flour','Not Applicable'),
('Whole Wheat Flour','Not Applicable'),
('Bread Flour','Not Applicable'),
('Sugar','Not Applicable'),
('Brown Sugar','Not Applicable'),
('Baking Sugar','Not Applicable'),
('Black Pepper','Not Applicable'),
('White Pepper','Not Applicable'),
('White Vinegar','Not Applicable'),
('Balsamic Vinegar','Not Applicable'),
('Apple Cider Vinegar','Not Applicable'),
('Baking Soda','Not Applicable'),
('Baking Powder','Not Applicable'),
('Chicken','Not Applicable'),
('Pork','Not Applicable'),
('Beef','Not Applicable'),
('Cocoa Powder','Not Applicable'),
('Cream of Tartar','Not Applicable'),
('Olive Oil','Not Applicable'),
('Peanut Oil','Not Applicable'),
('Coconut Oil','Not Applicable'),
('Canola Oil','Not Applicable'),
('Basil','Not Applicable'),
('Oregano','Not Applicable'),
('Parsley','Not Applicable'),
('Garlic Powder','Not Applicable'),
('Onion Powder','Not Applicable'),
('Nutmeg','Not Applicable'),
('Chili Powder','Not Applicable'),
('Chili Flakes','Not Applicable'),
('Cumin','Not Applicable'),
('Thyme','Not Applicable'),
('Fennel','Not Applicable'),
('Vanilla Extract','Not Applicable'),
('Almond Extract','Not Applicable'),
('Mint Extract','Not Applicable'),
('Orange Extract','Not Applicable'),
('Rum Extract','Not Applicable'),
('Soy Sauce','Not Applicable'),
('Worcestershire Sauce','Not Applicable'),
('Vegetable Stock','Not Applicable'),
('Beef Stock','Not Applicable'),
('Chicken Stock','Not Applicable'),
('Shrimp Stock','Not Applicable'),
('Pumpkin Seeds','Not Applicable'),
('Sunflower Seeds','Not Applicable'),
('Macadamia Nuts','Not Applicable'),
('Almonds','Not Applicable'),
('Slivered Almonds','Not Applicable'),
('Ground Almonds','Not Applicable'),
('Walnuts','Not Applicable'),
('Pine Nuts','Not Applicable'),
('Cashews','Not Applicable'),
('Pecans','Not Applicable'),
('Peanut Butter','Not Applicable'),
('Peanuts','Not Applicable'),
('Instant Coffee','Not Applicable'),
('Coffee','Not Applicable'),
('Water','Not Applicable'),
('Feta','Not Applicable'),
('Medium Cheddar','Not Applicable'),
('Sharp Cheddar','Not Applicable'),
('Parmesan','Not Applicable'),
('Shredded Parmesan','Not Applicable'),
('Grated Parmesan','Not Applicable'),
('Cream Cheese','Not Applicable'),
('Mozzarella','Not Applicable'),
('Shredded Mozzarella','Not Applicable'),
('Eggs','Not Applicable'),
('Bacon','Not Applicable'),
('Salami','Not Applicable'),
('Pepperoni','Not Applicable'),
('Hot Dogs','Not Applicable'),
('Dill','Not Applicable'),
('Pickles','Not Applicable'),
('Lemon Juice','Not Applicable'),
('Lime Juice','Not Applicable'),
('Mayonnaise','Not Applicable'),
('Almond Milk','Not Applicable'),
('Coconut Milk','Not Applicable'),
('Ketchup','Not Applicable'),
('Yellow Mustard','Not Applicable'),
('Relish','Not Applicable'),
('Ginger','Not Applicable'),
('Sesame Oil','Not Applicable'),
('Chili Oil','Not Applicable'),
('Rice Vinegar','Not Applicable'),
('Dijon Mustard','Not Applicable'),
('Hot Sauce','Not Applicable'),
('Egg Yolks','Not Applicable'),
('Egg Whites','Not Applicable'),
('Bay Leaves','Not Applicable'),
('Cayenne Pepper','Not Applicable'),
('Crushed Red Pepper','Not Applicable'),
('Coriander','Not Applicable'),
('Paprika','Not Applicable'),
('Rosemary','Not Applicable'),
('Cinnamon','Not Applicable'),
('Cloves','Not Applicable'),
('Allspice','Not Applicable'),
('Curry Powder','Not Applicable'),
('Italian Seasoning','Not Applicable'),
('Chickpeas','Not Applicable'),
('Kidney Beans','Not Applicable'),
('Salsa','Not Applicable'),
('Breadcrumbs','Not Applicable'),
('Panko','Not Applicable'),
('Couscous','Not Applicable'),
('Red Lentils','Not Applicable'),
('Green Lentils','Not Applicable'),
('Pasta','Not Applicable'),
('Whole Wheat Pasta','Not Applicable'),
('White Rice','Not Applicable'),
('Brown Rice','Not Applicable'),
('Oats','Not Applicable'),
('Barley','Not Applicable'),
('Millet','Not Applicable'),
('Quinoa','Not Applicable'),
('Wheatberry','Not Applicable'),
('Cornstarch','Not Applicable'),
('Honey','Not Applicable'),
('Butter','Not Applicable'),
('Flour Tortillas','Not Applicable'),
('Corn Tortillas','Not Applicable'),
('Raisins','Not Applicable'),
('Tomato Paste','Not Applicable'),
('Yogurt','Not Applicable'),
('Red Wine','Not Applicable'),
('Beer','Not Applicable'),
('Yeast','Not Applicable'),
('Corn Syrup','Not Applicable'),
('Anchovies','Not Applicable'),
('Farro','Not Applicable'),
('Cardamom','Not Applicable'),
('Garam Masala','Not Applicable'),
('Mustard Seed','Not Applicable'),
('Chocolate','Not Applicable'),
('Chocolate Chips','Not Applicable'),
('Milk','Not Applicable'),
('Mint','Not Applicable'),
('Creme Fraiche','Not Applicable'),
('Chives','Not Applicable'),
('Croutons','Not Applicable'),
('Garlic Croutons','Not Applicable'),
('Pie Dough','Not Applicable'),
('Hoisin Sauce','Not Applicable'),
('Miso Paste','Not Applicable'),
('Bok Choy','Not Applicable');