scoreboard players enable @a[scores={se_triggers=1..}] se_timers
scoreboard players enable @a[scores={se_triggers=1..}] se_statistics
scoreboard players enable @a[scores={se_triggers=1..}] se_bee_movie
scoreboard players enable @a[scores={se_triggers=1..}] se_biome_rush
scoreboard players enable @a[advancements={terrible_suggestions:riddles/job_first_line=true,terrible_suggestions:riddles/job_second_line=false},scores={se_triggers=1..}] se_unique_books
scoreboard players enable @a[advancements={terrible_suggestions:riddles/job_seventh_line=true,terrible_suggestions:riddles/job_eighth_line=false},scores={se_triggers=1..}] se_stew_a_day
scoreboard players enable @a se_toggle_triggers
execute as @a if score @s se_timers matches 1.. run function suggestion_rewards:timers_trigger
execute as @a if score @s se_statistics matches 1.. run function suggestion_rewards:statistics_trigger
execute as @a if score @s se_bee_movie matches 1.. run function suggestion_rewards:bee_movie_trigger
execute as @a if score @s se_biome_rush matches 1.. run function suggestion_rewards:biome_rush_trigger
execute as @a if score @s se_unique_books matches 1.. run function suggestion_rewards:unique_books_trigger
execute as @a if score @s se_stew_a_day matches 1.. run function suggestion_rewards:stew_a_day_trigger
execute as @a if score @s se_toggle_triggers matches 1.. run function suggestion_rewards:toggle_triggers_trigger

execute as @a[gamemode=!spectator] at @s run function terrible_suggestions:stay_in_azure_bluet
execute as @a[gamemode=!spectator] at @s run function terrible_suggestions:bee_movie_progress
execute as @a[gamemode=!spectator] at @s run function terrible_suggestions:total_logs_mined
execute as @a[gamemode=!spectator] at @s run function terrible_suggestions:jump_streak
execute as @a[gamemode=!spectator] at @s run function terrible_suggestions:twice_tenth_line_eight
execute as @a[gamemode=!spectator] at @s run function terrible_suggestions:biome_rush
execute as @a[gamemode=!spectator] at @s run function terrible_suggestions:any_percent
execute as @a[gamemode=!spectator] at @s if entity @s[advancements={terrible_suggestions:riddles/job_eighth_line=true}] run function terrible_suggestions:nitwit_mansion
execute as @a[gamemode=!spectator] at @s run function terrible_suggestions:mp_eligibility

execute as @a[gamemode=!spectator] at @s if entity @e[type=creaking,distance=..50] run function terrible_suggestions:count_creaking
execute as @a[gamemode=!spectator] at @s if entity @e[type=warden,distance=..15] run function terrible_suggestions:blindness_warden_check
execute as @a[gamemode=!spectator] at @s if entity @e[type=ghast,distance=..100] run function terrible_suggestions:malgoshas_army_check
execute as @a[gamemode=!spectator] at @s if entity @e[type=wandering_trader,distance=..8] run function terrible_suggestions:job_first_line_check

execute as @a[gamemode=!spectator] at @s if entity @e[type=minecraft:axolotl,nbt={Variant:4},distance=..8] if entity @e[type=minecraft:mooshroom,nbt={Type:"brown"},distance=..8] if entity @e[type=minecraft:sheep,nbt={Color:6b},distance=..8] run advancement grant @s only terrible_suggestions:suggestions/shiny_kingdom

execute as @a[gamemode=!spectator] at @s unless score @s bee_movie_progress matches 0.. run scoreboard players set @s bee_movie_progress 0
execute as @a[gamemode=!spectator] at @s unless score @s se_triggers matches -9999.. run scoreboard players set @s se_triggers 1

schedule function suggestion_rewards:one_second_timer 1s