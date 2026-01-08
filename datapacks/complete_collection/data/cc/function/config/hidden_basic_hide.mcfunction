# If basic hidden advancements are shown
execute as @a run advancement revoke @s only cc:technical/hiddens/basic
execute as @a run advancement revoke @s only cc:technical/hiddens/illegal_collection_hidden1 basic
execute as @a run advancement revoke @s only cc:technical/hiddens/illegal_collection_hidden2
scoreboard players set hidden cc_hidden_basic 0

function cc:config