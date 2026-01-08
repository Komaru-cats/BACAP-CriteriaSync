execute unless score se_installed se_installed matches 1 run datapack disable "file/BACAP Suggestion Edition v1.9"
execute unless score se_installed se_installed matches 1 run datapack disable "file/BACAP Suggestion Edition v1.9.zip"
execute unless score se_installed se_installed matches 1 run datapack enable "file/BACAP Suggestion Edition v1.9" last
execute unless score se_installed se_installed matches 1 run datapack enable "file/BACAP Suggestion Edition v1.9.zip" last

execute unless score se_installed se_installed matches 1 run datapack disable "file/BACAP Suggestion Edition v1.9 Hardcore"
execute unless score se_installed se_installed matches 1 run datapack disable "file/BACAP Suggestion Edition v1.9 Hardcore.zip"
execute unless score se_installed se_installed matches 1 run datapack enable "file/BACAP Suggestion Edition v1.9 Hardcore" last
execute unless score se_installed se_installed matches 1 run datapack enable "file/BACAP Suggestion Edition v1.9 Hardcore.zip" last

scoreboard players set se_installed se_installed 1