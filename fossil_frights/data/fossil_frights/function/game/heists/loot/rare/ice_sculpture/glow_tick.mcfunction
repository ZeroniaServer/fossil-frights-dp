execute unless entity @e[limit=1,type=minecraft:item_display,tag=ff_ice_sculpture] run return run scoreboard players reset $ice_sculpture ff_glowtrap_age

scoreboard players remove $ice_sculpture ff_glowtrap_age 1
execute unless score $ice_sculpture ff_glowtrap_age matches 1.. run data modify entity @e[limit=1,type=minecraft:item_display,tag=ff_ice_sculpture] Glowing set value false
execute unless score $ice_sculpture ff_glowtrap_age matches 1.. run scoreboard players reset $ice_sculpture ff_glowtrap_age
