# If missable hidden advancements are hidden
execute as @s run advancement grant @s only cc:technical/hiddens/missable
scoreboard players set hidden cc_hidden_missable 1

function cc:config