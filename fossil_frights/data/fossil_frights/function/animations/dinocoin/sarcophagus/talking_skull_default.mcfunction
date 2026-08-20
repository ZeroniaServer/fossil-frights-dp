function fossil_frights:animations/dinocoin/vending_machine/runtime/on_load
function fossil_frights:animations/dinocoin/sarcophagus/rig/on_load
function fossil_frights:animations/dinocoin/sarcophagus/rig/remove/all
execute positioned 80 75 81 rotated -90 0 run function fossil_frights:animations/dinocoin/sarcophagus/rig/summon {args:{}}
execute positioned 80 75 81 as @e[type=minecraft:item_display,tag=animation.talking_skull.root,distance=..4,sort=nearest,limit=1] at @s run function fossil_frights:animations/dinocoin/sarcophagus/rig/apply_default_pose
