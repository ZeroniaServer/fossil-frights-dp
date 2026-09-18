function fossil_frights:animations/dinocoin/vending_machine/runtime/on_load
function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/on_load
function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/remove/all
kill @e[type=minecraft:item_display,x=26.5,y=76,z=82.5,distance=..3,nbt={item:{components:{"minecraft:item_model":"fossil-frights:display/tasks/refill_popcorn/popcorn_machine"}}}]
execute positioned 27.375 75.5 83 run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/summon {args:{}}
execute positioned 27.375 75.5 83 as @e[type=minecraft:item_display,tag=animation.popcorn_machine.root,distance=..3,sort=nearest,limit=1] at @s run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/animations/run/set_frame {frame:0}
