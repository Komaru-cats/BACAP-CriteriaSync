execute unless score intro_msg cc_settings matches 0 run tellraw @a {"text":"                                             ","color":"dark_gray","strikethrough":true}
execute unless score intro_msg cc_settings matches 0 run tellraw @a {"color":"#D1FFFD","bold":false,"translate":"Thank you for downloading","extra":[{"text":"\n"},{"color":"#FF00B3","bold":true,"translate":"Complete Collection"},{"color":"gray","bold":true,"translate":" Edition"}]}
execute unless score intro_msg cc_settings matches 0 run tellraw @a {"text":"                                             ","color":"dark_gray","strikethrough":true}

execute unless score intro_msg cc_settings matches 0 run tellraw @a {"color":"#D1FFFD","italic":false,"translate":"To change settings, or read helpful answers, use the following command:"}
execute unless score intro_msg cc_settings matches 0 run tellraw @a {"color":"aqua","italic":false,"translate":"","extra":[{"text":" "},{"text":"/function cc:config","click_event":{"action":"suggest_command","command":"/function cc:config"}}]}
execute unless score intro_msg cc_settings matches 0 run tellraw @a {"color":"#D1FFFD","italic":false,"translate":"I IMPLORE YOU, PLEASE ALSO CHECK OUT BACAP’S ORIGINAL CONFIG MENU, IT HAS ALL THE HELP YOU WILL EVER NEED"}
execute unless score intro_msg cc_settings matches 0 run tellraw @a {"color":"aqua","italic":false,"translate":"","extra":[{"text":" "},{"text":"/function blazeandcave:config","click_event":{"action":"suggest_command","command":"/function blazeandcave:config"}}]}
execute unless score intro_msg cc_settings matches 0 run tellraw @a {"text":"                                             ","color":"dark_gray","strikethrough":true}

scoreboard players set introduced cc_settings 1