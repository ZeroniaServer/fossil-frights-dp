execute if score $present ff_plugin matches 1 run tellraw @s [{"text":"Fossil Frights plugin is managing stats. Use /admin leaderboard remove <player> or edit leaderboard.yml, then /admin leaderboard reload.","color":"red"}]
execute if score $present ff_plugin matches 1 run return 0
scoreboard players set @s ff_top_time 0
scoreboard players set @s ff_top_day 0
scoreboard players set @s ff_run_count 0
scoreboard players set @s ff_duo_best 0
function fossil_frights:game/start_room/settings/speedrun/runtime/task_delta/reset_bests
scoreboard players set @s ff_parkour_best 0
scoreboard players set @s ff_temple_run_best 0
scoreboard players set @s ff_ant_score 0
scoreboard players reset @s ff_ant_combo
scoreboard players reset @s ff_ant_combo_shown_until_timestamp
scoreboard players set @s ff_ant_top_score 0
function fossil_frights:leaderboards/sync_entry
function fossil_frights:leaderboards/display/refresh
tellraw @s [{"text":"Fossil Frights stats reset.","color":"green"}]
