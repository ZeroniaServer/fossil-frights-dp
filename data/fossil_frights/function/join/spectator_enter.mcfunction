execute if score $game_running ff_game_state matches 1 unless block 10 71 26 minecraft:lever[powered=true] run function fossil_frights:messages/error/spectating_disabled
execute if score $game_running ff_game_state matches 1 unless block 10 71 26 minecraft:lever[powered=true] run return 0
execute unless entity @a[tag=ff_active,limit=1] run return 0
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:ant_fight/exit
gamemode spectator @s
function fossil_frights:util/fade/queue/spectator_enter
