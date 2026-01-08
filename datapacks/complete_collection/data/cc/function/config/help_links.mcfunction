tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s {"color":"gray","bold":false,"text":" ","extra":[{"color":"gray","bold":false,"translate":"Important Links"}]}

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

## Specifically: Language Pack, Advancements Documentation, Version History

# Link to Language Pack
tellraw @s ["",{"text":"[ »» ]","color":"aqua","click_event":{"action":"open_url","url":"https://bit.ly/cc_rp_2_40"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to follow link","color":"gold"}]}}," ",{"translate":"Resource Pack","hover_event":{"action":"show_text","value":["",{"translate":"The Complete Collection Resource Pack translates all the advancements and trophies into other languages, translates the criteria with Advancement Info Reloaded, and adds custom textures for the trophies.","color":"#D1FFFD"}]}}]

# Link to Advancements Docmentation
tellraw @s ["",{"text":"[ »» ]","color":"yellow","click_event":{"action":"open_url","url":"https://bit.ly/cc_2_40_doc"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to follow link","color":"gold"}]}}," ",{"translate":"Advancements and Trophy Documentation","hover_event":{"action":"show_text","value":["",{"translate":"The Complete Collection Documentation is a spreadsheet detailing every advancement and trophy in the datapack, with moderately complete info.","color":"#D1FFFD"}]}}]

# Version History
tellraw @s ["",{"text":"[ »» ]","color":"gold","click_event":{"action":"open_url","url":"https://bit.ly/cc_ver_history"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to follow link","color":"gold"}]}}," ",{"translate":"Version History","hover_event":{"action":"show_text","value":["",{"translate":"A document detailing most of the changes that have happened in the history of the datapack.","color":"#D1FFFD"}]}}]


# Go back
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s ["",{"text":"[ «« ]","color":"red","click_event":{"action":"run_command","command":"/function cc:help_menu"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to go back","color":"gold"}]}}," ",{"translate":"Go back to Complete Collection Help Menu"}]

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
