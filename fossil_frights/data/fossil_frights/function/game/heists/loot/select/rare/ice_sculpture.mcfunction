execute unless score $loot_ice_sculpture ff_heist_loot_state matches 0 run return 0
setblock 68 83 46 minecraft:air

execute as @e[limit=1,type=minecraft:interaction,tag=ff_heist_loot_ice_sculpture_button] at @s run function fossil_frights:interactions/button/enable
setblock 71 83 46 minecraft:cherry_button[facing=west]

scoreboard players set $loot_ice_sculpture ff_heist_loot_state 1
execute store result score $loot_ice_sculpture ff_heist_loot_value run random value 1..5
execute if score $loot_ice_sculpture ff_heist_loot_value matches 1 run scoreboard players set $loot_ice_sculpture ff_heist_loot_value 550
execute if score $loot_ice_sculpture ff_heist_loot_value matches 2 run scoreboard players set $loot_ice_sculpture ff_heist_loot_value 600
execute if score $loot_ice_sculpture ff_heist_loot_value matches 3 run scoreboard players set $loot_ice_sculpture ff_heist_loot_value 650
execute if score $loot_ice_sculpture ff_heist_loot_value matches 4 run scoreboard players set $loot_ice_sculpture ff_heist_loot_value 700
execute if score $loot_ice_sculpture ff_heist_loot_value matches 5 run scoreboard players set $loot_ice_sculpture ff_heist_loot_value 750
scoreboard players set $loot_ice_sculpture ff_heist_flash 0
scoreboard players operation $loot_ice_sculpture ff_heist_sidebar = $heist_sidebar_slot ff_heist
scoreboard players remove $heist_sidebar_slot ff_heist 1
scoreboard players add $heist_rare_selected ff_heist 1
execute as @e[type=minecraft:item_display,tag=ff_ice_sculpture,limit=1] run data merge entity @s {view_range:1f}
function fossil_frights:game/heists/loot/rare/ice_sculpture/sync
execute at @e[type=minecraft:sulfur_cube,tag=ff_heist_ice_sculpture_driver,limit=1] run particle minecraft:snowflake ~ ~0.8 ~ 0.45 0.45 0.45 0.03 24 force
