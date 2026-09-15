function fossil_frights:animations/dinocoin/vending_machine/runtime/on_load
function fossil_frights:animations/tasks/medium/feed_the_plants/flytrap/rig/on_load
function fossil_frights:animations/tasks/medium/feed_the_plants/flytrap/rig/remove/all
execute positioned 23.5 94 70.5 rotated -45 0 run function fossil_frights:animations/tasks/medium/feed_the_plants/flytrap/rig/summon {args:{}}
execute positioned 23.5 94 70.5 as @e[type=minecraft:item_display,tag=animation.carnivorous_flytrap.root,distance=..3,sort=nearest,limit=1] at @s run function fossil_frights:animations/tasks/medium/feed_the_plants/flytrap/rig/animations/eat/set_frame {frame:55}
execute positioned 23.5 94 70.5 as @e[type=minecraft:item_display,tag=animation.carnivorous_flytrap.root,distance=..3,sort=nearest,limit=1] run tag @s add ff_feed_the_plants_flytrap_northwest
execute positioned 21.5 95 68.5 run function fossil_frights:animations/tasks/medium/feed_the_plants/flytrap/rig/summon {args:{}}
execute positioned 21.5 95 68.5 as @e[type=minecraft:item_display,tag=animation.carnivorous_flytrap.root,distance=..3,sort=nearest,limit=1] at @s run function fossil_frights:animations/tasks/medium/feed_the_plants/flytrap/rig/animations/eat/set_frame {frame:55}
execute positioned 21.5 95 68.5 as @e[type=minecraft:item_display,tag=animation.carnivorous_flytrap.root,distance=..3,sort=nearest,limit=1] run tag @s add ff_feed_the_plants_flytrap_east
