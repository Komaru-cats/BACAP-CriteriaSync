# If missable hidden advancements are shown
execute as @a run advancement revoke @s only cc:technical/hiddens/missable
execute as @a run advancement revoke @s only cc:technical/hiddens/alpha_collection_hidden1 missable
execute as @a run advancement revoke @s only cc:technical/hiddens/alpha_collection_hidden2
scoreboard players set hidden cc_hidden_missable 0

function cc:config