# Function runs once every second

# Checks if there is a player who has quit and just now rejoined the game. And updates technical advancements
execute if score hidden cc_hidden_basic matches 1 as @a[scores={bac_quit=1..}] run advancement grant @s only cc:technical/hiddens/alpha_collection_hidden1
execute if score hidden cc_hidden_missable matches 1 as @a[scores={bac_quit=1..}] run advancement grant @s only cc:technical/hiddens/illegal_collection_hidden1

schedule function cc:hidden_timer 1s