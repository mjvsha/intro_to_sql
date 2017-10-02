
Find STAR WARS ROBOTS
intro_to_sql=# SELECT * FROM robots WHERE source = 'Star Wars'; 
-[ RECORD 1 ]----------
name        | C3PO
source      | Star Wars
personality | anxious
id          | 4
-[ RECORD 2 ]----------
name        | R2D2
source      | Star Wars
personality | loyal
id          | 8
 
FIND ANXIOUS ROBOT
intro_to_sql=# SELECT * FROM robots WHERE personality = 'anxious'; 
-[ RECORD 1 ]----------
name        | C3PO
source      | Star Wars
personality | anxious
id          | 4

SELECT ALL THE NUT FREE RECIPES
 
intro_to_sql=# SELECT name FROM recipes WHERE nut_free = true; 
-[ RECORD 1 ]-----------------------------------
name | Butternut Squash Bake
-[ RECORD 2 ]-----------------------------------
name | Vegetarian Bibimbap
-[ RECORD 3 ]-----------------------------------
name | French Veggie Loaf
-[ RECORD 4 ]-----------------------------------
name | Quinoa and Black Beans
-[ RECORD 5 ]-----------------------------------
name | Juicy Roasted Chicken
-[ RECORD 6 ]-----------------------------------
name | Garlic Green Beans
-[ RECORD 7 ]-----------------------------------
name | Stout Slow Cooker Corned Beef and Veggies
 
COUNT NUT FREE AND GLUTEN FREE RECIPES
intro_to_sql=# SELECT COUNT (*) FROM recipes WHERE gluten_free = true AND vegetarian = false; 
-[ RECORD 1 ]
count | 2
 
 
 
FIND ANIMAL WITH MOST LEGS
intro_to_sql=# SELECT MAX(number_of_legs) FROM animals; 
-[ RECORD 1 ]
max | 8
 
intro_to_sql=# SELECT * FROM animals WHERE number_of_legs = 8; 
-[ RECORD 1 ]--+--------
name           | octopus
number_of_legs | 8
flying         | f
swimming       | t
egg_laying     | t
id             | 3
 
 
FIND THE BOARD GAME THAT FINISHES THE FASTEST
SELECT MIN(mins_to_play) FROM board_games; 
-[ RECORD 1 ]
min | 15
 
 
intro_to_sql=# SELECT * FROM board_games WHERE mins_to_play = 15; 
 
-[ RECORD 1 ]+---------
name         | Sushi Go
max_players  | 5
min_players  | 2
category     | party
mins_to_play | 15
id           | 10
-[ RECORD 2 ]+---------
name         | Quixo
max_players  | 4
min_players  | 2
category     | abstract
mins_to_play | 15
id           | 11
 
 
SELECT THE MOST LONGEST MAKING RECIPE
intro_to_sql=# SELECT MAX(minutes_required) FROM recipes; 
-[ RECORD 1 ]
max | 390
 
SELECT name, id FROM recipes WHERE minutes_required = 390;
 
-[ RECORD 1 ]-----------------------------------
name | Stout Slow Cooker Corned Beef and Veggies
id   | 9
 

FIND THE ROBOTS THAT START WITH LETTER M
 
intro_to_sql=# SELECT * FROM robots WHERE name LIKE 'M%'; 
-[ RECORD 1 ]-------------------------------------
name        | Marvin
source      | The Hitchhiker's Guide to the Galaxy
personality | pessimistic
id          | 3
-[ RECORD 2 ]-------------------------------------
name        | Mr. Butlertron
source      | Clone High
personality | compassionate
id          | 5
 
 
COUNT THE NUMBER OF BOARD GAMES THAT CAN BE PLAYED BY 8 PEOPLE

intro_to_sql=# SELECT COUNT (*) FROM board_games WHERE max_players >= 8; 
-[ RECORD 1 ]
count | 3
 
FIND THE SWIMMING AND EGG LAYING ANIMALS
intro_to_sql=# SELECT name, id FROM animals WHERE swimming = true AND egg_laying = true; 
-[ RECORD 1 ]-
name | octopus
id   | 3
-[ RECORD 2 ]-
name | duck
id   | 4

FIND THE SWIMMING, EGG LAYING BUT NOT FLYING ANIMALS
 
intro_to_sql=# SELECT name, id FROM animals WHERE swimming = true AND egg_laying = true AND flying = false; 
-[ RECORD 1 ]-
name | octopus
id   | 3
 
THE BOARD GAME THAT SUPPORTS THE LARGEST NUMBER OF PEOPLE
 
intro_to_sql=# SELECT MAX(max_players) FROM board_games; 
-[ RECORD 1 ]
max | 30
 
intro_to_sql=# 
intro_to_sql=# SELECT name, id FROM board_games WHERE max_players = 30; 
-[ RECORD 1 ]----------------
name | Cards Against Humanity
id   | 8
 
 
