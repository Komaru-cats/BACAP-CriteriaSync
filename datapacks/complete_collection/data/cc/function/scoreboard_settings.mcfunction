tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s {"color":"gray","bold":false,"text":" ","extra":[{"color":"gray","bold":false,"translate":"Complete Collection Scoreboard Display Settings"}]}
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Scoreboards
tellraw @s ["",{"text":"[ »» ]","color":"dark_purple","click_event":{"action":"run_command","command":"/function cc:config/scoreboard_cc_advancements"},"hover_event":{"action":"show_text","value":["",{"translate":"The CC Scoreboard keeps track exclusively of how many CC advancements each player has obtained","color":"#D1FFFD"},{"text":"\n"},{"text":"cc_advancements","color":"dark_purple","italic":true},{"text":"\n\n"},{"translate":"Recommended: Never, do not use this","color":"yellow"},{"text":"\n"},{"translate":"Click to display","italic":true,"color":"gold"}]}}," ",{"translate":"Complete Collection Scoreboard"}]
tellraw @s {"translate":"Yep, that’s it"}
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Go back
tellraw @s ["",{"text":"[ «« ]","color":"red","click_event":{"action":"run_command","command":"/function cc:config"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to go back","color":"gold"}]}}," ",{"translate":"Go back to Complete Collection config menu"}]
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}