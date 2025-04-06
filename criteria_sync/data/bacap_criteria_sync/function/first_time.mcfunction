scoreboard players add bacap_criteria_sync bacap_criteria_sync_first_time 0

execute if score bacap_criteria_sync bacap_criteria_sync_first_time matches 0 run tellraw @a [{"text":"BACAP Criteria Sync","bold":true,"color":"#59B829"},{"text":" is installed.","color":"green","bold":false},{"text":"\n","bold":false},{"text":"Note:","bold":true,"color":"#CECECE"},{"text":" It will work only if co-op/team co-op mode is enabled in ","color":"#CECECE","bold":false},{"text":"BACAP config","underlined":true,"color":"#CECECE","click_event":{"action":"suggest_command","command":"/function blazeandcave:config"},"bold":false}]

execute if score bacap_criteria_sync bacap_criteria_sync_first_time matches 0 run scoreboard players set bacap_criteria_sync bacap_criteria_sync_first_time 1