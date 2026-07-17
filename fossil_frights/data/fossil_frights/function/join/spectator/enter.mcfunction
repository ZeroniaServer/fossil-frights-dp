execute if score $game_running ff_game_state matches 1 unless block 10 71 26 minecraft:lever[powered=true] run function fossil_frights:messages/error/spectating_disabled
execute if score $game_running ff_game_state matches 1 unless block 10 71 26 minecraft:lever[powered=true] run return 0
execute unless entity @a[team=ff_guard,limit=1] unless entity @a[team=ff_thief,limit=1] run return 0
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:ant_fight/exit
team leave @s
team join ff_spectator @s[team=!ff_dev_mode]
scoreboard players set @s ff_join_cooldown 40
gamemode spectator @s
function fossil_frights:util/fade/queue/spectator_enter
