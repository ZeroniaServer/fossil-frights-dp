scoreboard players set $tutorial_blocked ff_tutorial 0
execute if entity @s[team=ff_guard] run function fossil_frights:messages/error/cannot_watch_tutorial_while_active
execute if entity @s[team=ff_guard] run scoreboard players set $tutorial_blocked ff_tutorial 1
execute if score @s ff_parkour_running matches 1.. run function fossil_frights:messages/error/cannot_watch_tutorial_while_parkour
execute if score @s ff_temple_run_running matches 1.. run function fossil_frights:messages/error/cannot_watch_tutorial_while_temple_run
execute if score @s ff_temple_run_running matches 1.. run scoreboard players set $tutorial_blocked ff_tutorial 1
execute if score @s ff_parkour_running matches 1.. run scoreboard players set $tutorial_blocked ff_tutorial 1
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:messages/error/cannot_watch_tutorial_while_ant_fight
execute if entity @s[tag=ff_ant_fight] run scoreboard players set $tutorial_blocked ff_tutorial 1
execute if score $tutorial_blocked ff_tutorial matches 0 if score $game_running ff_game_state matches 1 unless block 10 71 26 minecraft:lever[powered=true] run function fossil_frights:messages/error/tutorial_unavailable_spectators_disabled
execute if score $tutorial_blocked ff_tutorial matches 0 if score $game_running ff_game_state matches 1 unless block 10 71 26 minecraft:lever[powered=true] run scoreboard players set $tutorial_blocked ff_tutorial 1
execute if score $tutorial_blocked ff_tutorial matches 0 run function fossil_frights:tutorial/start_apply
