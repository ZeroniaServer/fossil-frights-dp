execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 20 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 20 run tp @s -33 81 73.5 0 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 20 unless score $defeat_anim ff_game_state matches 1 at @s run function fossil_frights:animations/defeat/start_after_fade
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute as @a[team=ff_guard,tag=!ff_fade_tp_active] run title @s times 5 3 10
execute as @a[team=ff_guard,tag=!ff_fade_tp_active] run title @s title {"text":"","font":"fossil-frights:title_overlays/fade_black","italic":false,"shadow_color":0}
scoreboard players set @a[team=ff_guard,tag=!ff_fade_tp_active] ff_tp_action 20
scoreboard players set @a[scores={ff_tp_action=20},tag=!ff_fade_tp_active] ff_tp_delay 18
tag @a[scores={ff_tp_action=20},tag=!ff_fade_tp_active] add ff_fade_tp_active
