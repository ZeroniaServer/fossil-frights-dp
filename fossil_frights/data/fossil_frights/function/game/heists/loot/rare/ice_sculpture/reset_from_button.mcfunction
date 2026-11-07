execute unless score $loot_ice_sculpture ff_heist_loot_state matches 1..2 run return 0
scoreboard players set $loot_ice_sculpture ff_heist_loot_state 1
scoreboard players set $loot_ice_sculpture ff_heist_flash 0
execute as @e[type=minecraft:sulfur_cube,tag=ff_heist_ice_sculpture_driver,limit=1] run tp @s 68.5 82.0 46.5 0 0
execute as @e[type=minecraft:item_display,tag=ff_ice_sculpture,limit=1] run tp @s 68.5 82.0 46.5 0 0
data merge entity @e[type=minecraft:item_display,tag=ff_ice_sculpture,limit=1] {view_range:1f}
function fossil_frights:game/heists/loot/steal_alert
execute if score $rare_heavy_exact ff_heist matches 0 if score $security_by_loot ff_heist matches 1 run function fossil_frights:game/heists/loot/restore_security_alert
function fossil_frights:game/heists/loot/render
