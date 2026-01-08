# Function runs at the beginning of a load

# The following are used for hidden advancements
scoreboard objectives add cc_advancements dummy
scoreboard objectives add cc_settings dummy
scoreboard objectives add cc_hidden_basic dummy
scoreboard objectives add cc_hidden_missable dummy

# The following are for toggling the hiddens
execute as @a unless score @s cc_advancements matches ..1000 run scoreboard players set @s cc_advancements 0
execute unless score cc_particles cc_settings matches ..1000 run scoreboard players set cc_particles cc_settings 1
execute unless score intro_msg cc_settings matches ..1000 run scoreboard players set intro_msg cc_settings 1
execute unless score hidden cc_hidden_basic matches ..1000 run scoreboard players set hidden cc_hidden_basic 0
execute unless score hidden cc_hidden_missable matches ..1000 run scoreboard players set hidden cc_hidden_missable 0

# Start the timer
schedule function cc:hidden_timer 1s
execute unless score introduced cc_settings matches 1 run schedule function cc:intro 2s