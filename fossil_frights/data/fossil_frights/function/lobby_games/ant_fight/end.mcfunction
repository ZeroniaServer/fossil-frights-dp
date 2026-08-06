execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 28 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 28 run function fossil_frights:lobby_games/ant_fight/hit
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 28 run tag @s remove ff_ant_fight_exit_pending
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 28 run tag @s remove ff_ant_fight_leave
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute if entity @s[tag=ff_ant_fight_exit_pending] run return 0
execute unless entity @s[tag=ff_ant_fight_leave] run function fossil_frights:lobby_games/ant_fight/hit
execute unless entity @s[tag=ff_ant_fight_leave] run return 0
title @s times 5 3 10
title @s title {"text":"","font":"fossil-frights:title_overlays/fade_black","italic":false,"shadow_color":0}
scoreboard players set @s ff_tp_action 28
tag @s add ff_ant_fight_exit_pending
tag @s add ff_fade_tp_active
scoreboard players set @s ff_tp_delay 18
