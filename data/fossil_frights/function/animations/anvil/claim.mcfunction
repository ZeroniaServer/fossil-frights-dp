scoreboard players set @s ff_anvil_time 0
scoreboard players set @s ff_anvil_result 0
scoreboard players set @s ff_anvil_hits 0
tag @s add ff_anvil_busy
tag @e[type=minecraft:item,tag=!ff_anvil_input,tag=!ff_anvil_output,distance=..0.75,limit=1,sort=nearest] add ff_anvil_input
function fossil_frights:animations/anvil/spawn_displays
execute if entity @e[type=minecraft:item_display,tag=ff_anvil_display,distance=..1.5,limit=1] if entity @e[type=minecraft:item_display,tag=ff_anvil_mace,distance=..2,limit=1] run function fossil_frights:animations/anvil/bind_input
execute if entity @e[type=minecraft:item_display,tag=ff_anvil_display,distance=..1.5,limit=1] run function fossil_frights:animations/anvil/resolve_recipe
execute unless entity @e[type=minecraft:item_display,tag=ff_anvil_display,distance=..1.5,limit=1] run function fossil_frights:animations/anvil/cleanup
execute unless entity @e[type=minecraft:item_display,tag=ff_anvil_mace,distance=..2,limit=1] run function fossil_frights:animations/anvil/cleanup
