function fossil_frights:animations/dinocoin/vending_machine/runtime/on_load
function fossil_frights:animations/dinocoin/crane/rig/on_load
function fossil_frights:animations/dinocoin/crane/rig/remove/all
kill @e[type=minecraft:item_display,tag=ff_sculkadillo]
execute positioned 51 68 61 rotated 90 0 run function fossil_frights:animations/dinocoin/crane/rig/summon {args:{}}
execute positioned 51 68 61 as @e[type=minecraft:item_display,tag=animation.sculkadillo.root,distance=..4,sort=nearest,limit=1] at @s run function fossil_frights:animations/dinocoin/crane/rig/apply_default_pose
execute positioned 51 68 61 as @e[type=minecraft:item_display,tag=animation.sculkadillo.root,distance=..4,sort=nearest,limit=1] at @s run function fossil_frights:animations/dinocoin/crane/hide_coin
execute positioned 51 68 61 run playsound minecraft:block.piston.contract block @a[distance=..16] ~ ~ ~ 0.6 1.2
