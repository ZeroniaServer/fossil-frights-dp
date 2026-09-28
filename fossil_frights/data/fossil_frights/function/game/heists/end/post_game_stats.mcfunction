scoreboard players set $heist_post_game_any ff_heist 0

execute as @a[tag=ff_heist_stat_participant] run scoreboard players operation @s ff_heist_deaths_round = @s ff_deaths
execute as @a[tag=ff_heist_stat_participant] run scoreboard players operation @s ff_heist_deaths_round -= @s ff_heist_deaths_baseline

scoreboard players set $heist_loot_captured_round_max ff_heist_loot_captured_round 0
scoreboard players operation $heist_loot_captured_round_max ff_heist_loot_captured_round > @a[tag=ff_heist_stat_thief] ff_heist_loot_captured_round
execute if score $heist_loot_captured_round_max ff_heist_loot_captured_round matches 1.. run scoreboard players set $heist_post_game_any ff_heist 1

scoreboard players set $heist_keys_stolen_round_max ff_heist_keys_stolen_round 0
scoreboard players operation $heist_keys_stolen_round_max ff_heist_keys_stolen_round > @a[tag=ff_heist_stat_thief] ff_heist_keys_stolen_round
execute if score $heist_keys_stolen_round_max ff_heist_keys_stolen_round matches 1.. run scoreboard players set $heist_post_game_any ff_heist 1

scoreboard players set $heist_deaths_round_max ff_heist_deaths_round 0
scoreboard players operation $heist_deaths_round_max ff_heist_deaths_round > @a[tag=ff_heist_stat_participant] ff_heist_deaths_round
execute if score $heist_deaths_round_max ff_heist_deaths_round matches 1.. run scoreboard players set $heist_post_game_any ff_heist 1

scoreboard players set $heist_thieves_killed_round_max ff_heist_thieves_killed_round 0
scoreboard players operation $heist_thieves_killed_round_max ff_heist_thieves_killed_round > @a[tag=ff_heist_stat_guard] ff_heist_thieves_killed_round
execute if score $heist_thieves_killed_round_max ff_heist_thieves_killed_round matches 1.. run scoreboard players set $heist_post_game_any ff_heist 1

execute unless score $heist_post_game_any ff_heist matches 1.. run return 0

tellraw @a {"translate":"ff.heists.stats.title","color":"gold"}
execute if score $heist_loot_captured_round_max ff_heist_loot_captured_round matches 1.. run function fossil_frights:game/heists/end/post_game_stats/line_loot
execute if score $heist_keys_stolen_round_max ff_heist_keys_stolen_round matches 1.. run function fossil_frights:game/heists/end/post_game_stats/line_keys
execute if score $heist_deaths_round_max ff_heist_deaths_round matches 1.. run function fossil_frights:game/heists/end/post_game_stats/line_deaths
execute if score $heist_thieves_killed_round_max ff_heist_thieves_killed_round matches 1.. run function fossil_frights:game/heists/end/post_game_stats/line_kills
tellraw @a {"translate":"ff.heists.stats.separator","color":"gold"}
