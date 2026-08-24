execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 17 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 17 at @s as @a[distance=..0.000001,gamemode=spectator,team=ff_spectator] run spectate
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 17 if entity @a[team=ff_guard,limit=1] run spectate @r[team=ff_guard,limit=1] @s
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 17 unless entity @a[team=ff_guard,limit=1] run spectate @r[team=ff_thief,limit=1] @s
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 17 run function fossil_frights:messages/spectator/now_spectating
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute if entity @s[tag=ff_fade_tp_active] unless score @s ff_tp_action matches 14 run return 0
execute if predicate fossil_frights:game_state/game_running if score $settings_spectator_deny ff_game_state matches 1 run function fossil_frights:messages/error/spectating_disabled
execute if predicate fossil_frights:game_state/game_running if score $settings_spectator_deny ff_game_state matches 1 run return 0
execute unless entity @a[team=ff_guard,limit=1] unless entity @a[team=ff_thief,limit=1] run return 0
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:lobby_games/ant_fight/end
team leave @s
team join ff_spectator @s[team=!ff_dev_mode]
scoreboard players set @s ff_join_cooldown 40
gamemode spectator @s

effect give @s minecraft:invisibility infinite 0 true
title @s times 5 3 10
title @s title {"text":"","font":"fossil-frights:title_overlays/fade_black","italic":false,"shadow_color":0}
scoreboard players set @s ff_tp_action 17
tag @s add ff_fade_tp_active
scoreboard players set @s ff_tp_delay 18
