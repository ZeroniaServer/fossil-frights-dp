advancement revoke @s only fossil_frights:basketball_dance_jukebox_click
execute unless score $basketball_dance_sel ff_task_state matches 1 run return 0
execute unless score $basketball_dance_done ff_task_state matches 0 run return 0
execute unless entity @s[tag=ff_active] run return 0
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless score $day_active ff_day matches 1 run return 0
execute unless items entity @s weapon.mainhand minecraft:copper_ingot[minecraft:item_model="minecraft:music_disc_creator_music_box"] unless items entity @s weapon.offhand minecraft:copper_ingot[minecraft:item_model="minecraft:music_disc_creator_music_box"] run return 0
clear @s minecraft:copper_ingot[minecraft:item_model="minecraft:music_disc_creator_music_box"] 1
function fossil_frights:tasks/hard/basketball_dance/start_dance
