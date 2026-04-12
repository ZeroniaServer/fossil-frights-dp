execute if entity @s[tag=ff_active] run function fossil_frights:messages/error/cannot_watch_tutorial_while_active
execute if entity @s[tag=ff_active] run return 0
execute if score @s ff_parkour_running matches 1.. run function fossil_frights:messages/error/cannot_watch_tutorial_while_parkour
execute if score @s ff_parkour_running matches 1.. run return 0
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:messages/error/cannot_watch_tutorial_while_ant_fight
execute if entity @s[tag=ff_ant_fight] run return 0
execute if score $game_running ff_game_state matches 1 unless block 10 71 26 minecraft:lever[powered=true] run function fossil_frights:messages/error/tutorial_unavailable_spectators_disabled
execute if score $game_running ff_game_state matches 1 unless block 10 71 26 minecraft:lever[powered=true] run return 0
function fossil_frights:tutorial/start
