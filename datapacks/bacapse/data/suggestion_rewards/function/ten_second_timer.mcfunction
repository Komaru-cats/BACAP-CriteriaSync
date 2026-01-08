execute as @a[gamemode=!spectator] at @s if score time bac_current_time matches 0..200 run function terrible_suggestions:new_day

schedule function suggestion_rewards:ten_second_timer 10s