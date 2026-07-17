execute unless score $loot_basketball ff_heist_loot_state matches 1..2 run return 0
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless items entity @s weapon.mainhand minecraft:copper_ingot[minecraft:item_model="minecraft:music_disc_creator_music_box"] unless items entity @s weapon.offhand minecraft:copper_ingot[minecraft:item_model="minecraft:music_disc_creator_music_box"] run return 0
clear @s minecraft:copper_ingot[minecraft:item_model="minecraft:music_disc_creator_music_box"] 1
function fossil_frights:tasks/hard/basketball_dance/start_dance
function fossil_frights:game/heists/loot/high/sync/basketball
