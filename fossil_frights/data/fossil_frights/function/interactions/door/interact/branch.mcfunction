scoreboard players set #editor ff_dummy 0
execute as @a[limit=1,tag=ff_door.player] if predicate fossil_frights:world/packs_enabled/dev if entity @s[gamemode=creative] if predicate fossil_frights:player/input/sneak run scoreboard players set #editor ff_dummy 1
execute if score #editor ff_dummy matches 1 run return run execute align xyz positioned ~-0.001 ~-0.001 ~-0.001 as @e[dx=0.002,dy=0.002,dz=0.002,type=minecraft:item_display,tag=ff_door] at @s run function fossil_frights:interactions/door/editor/open

scoreboard players set #can_open ff_dummy 0
execute align xyz positioned ~-0.001 ~-0.001 ~-0.001 as @e[dx=0.002,dy=0.002,dz=0.002,type=minecraft:item_display,tag=ff_door] at @s run function fossil_frights:interactions/door/interact/check_can_open

execute store result score #gametime ff_block_door_interaction_until_timestamp run time query gametime
execute if score #can_open ff_dummy matches 0 align xyz positioned ~-0.001 ~-0.001 ~-0.001 as @e[dx=0.002,dy=0.002,dz=0.002,type=minecraft:item_display,tag=ff_door] unless score @s ff_block_door_interaction_until_timestamp > #gametime ff_block_door_interaction_until_timestamp at @s run return run function fossil_frights:interactions/door/shake/start
execute if score #can_open ff_dummy matches 1 align xyz positioned ~-0.001 ~-0.001 ~-0.001 as @e[dx=0.002,dy=0.002,dz=0.002,type=minecraft:item_display,tag=ff_door] unless score @s ff_block_door_interaction_until_timestamp > #gametime ff_block_door_interaction_until_timestamp at @s run return run function fossil_frights:interactions/door/toggle_state
