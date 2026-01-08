tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s {"color":"gray","bold":false,"text":" ","extra":[{"color":"gray","bold":false,"translate":"Complete Collection Help Menu/FAQ"}]}
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# PLEASE LOOK AT BACAP'S HELP MENU
tellraw @s [{"bold":true,"translate":"You should really check BACAP’s "},{"bold":true,"click_event":{"action":"run_command","command":"/function blazeandcave:help_menu"},"color":"dark_green","hover_event":{"action":"show_text","value":[{"translate":"Click to run","color":"gold"}]},"translate":"Help Menu"},{"bold":true,"translate":" for more general help."}]
tellraw @s {"color":"gray","translate":"It’s a great resource, but I’ve not seen a single person read it. Ever."}
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# How to use
tellraw @s {"hover_event":{"action":"show_text","value":[{"translate":"Not this one, dummy! The lines below q_q","color":"#D1FFFD"}]},"translate":"Hover over a line of text to read more"}
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Why so many hiddens?
tellraw @s {"color":"light_purple","hover_event":{"action":"show_text","value":[{"translate":"Originally only the namesake advancement was included. But afterwards I added more collection type advancements, and because the main advancement is incredibly hard, well. I can’t really backtrack and make either A: Something easier, or B: Something not related to collecting","color":"#D1FFFD"}]},"translate":"Why are so many advancements hidden?"}

# Why is CC criteria weird?
tellraw @s {"color":"dark_purple","hover_event":{"action":"show_text","value":[{"translate":"Optimization purposes. For example, every block and item in Stack All the Blocks! and Stack All the Items! are condensed into two criteria","color":"#D1FFFD"}]},"translate":"Why does A Complete Collection! have way less criteria than blocks and items in the game?"}

# Link to more links
## Specifically: Language Pack, Advancements Documentation, Version History
tellraw @s ["",{"text":"[ »» ]","color":"green","click_event":{"action":"run_command","command":"/function cc:config/help_links"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to view","color":"gold"}]}}," ",{"translate":"Important Links"}]

# Where are all the other lines?
tellraw @s {"color":"aqua","hover_event":{"action":"show_text","value":[{"translate":"This is sort of a proof of concept, I have no other ideas :c","color":"#D1FFFD"}]},"translate":"Why are there only two questions and three links?"}
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Go back
tellraw @s ["",{"text":"[ «« ]","color":"red","click_event":{"action":"run_command","command":"/function cc:config"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to go back","color":"gold"}]}}," ",{"translate":"Go back to Complete Collection config menu"}]
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}