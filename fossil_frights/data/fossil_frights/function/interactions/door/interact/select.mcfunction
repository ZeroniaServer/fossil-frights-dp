execute unless function fossil_frights:interactions/door/interact/check run return 0
scoreboard players set #editor ff_dummy 0
execute as @a[limit=1,tag=ff_door.player] if predicate fossil_frights:world/packs_enabled/dev if entity @s[gamemode=creative] if predicate fossil_frights:player/input/sneak run scoreboard players set #editor ff_dummy 1
execute if score #editor ff_dummy matches 1 align xyz positioned ~-0.001 ~-0.001 ~-0.001 as @e[dx=0.002,dy=0.002,dz=0.002,type=minecraft:item_display,tag=ff_door] at @s run function fossil_frights:interactions/door/editor/open
execute if score #editor ff_dummy matches 0 align xyz positioned ~-0.001 ~-0.001 ~-0.001 as @e[dx=0.002,dy=0.002,dz=0.002,type=minecraft:item_display,tag=ff_door] positioned ~0.501 ~0.501 ~0.501 run function fossil_frights:interactions/door/toggle_state
data remove entity @s interaction
