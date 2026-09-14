function fossil_frights:animations/dinocoin/vending_machine/runtime/on_load
function fossil_frights:animations/tasks/easy/tnt_test/detonator/rig/on_load
function fossil_frights:animations/tasks/easy/tnt_test/detonator/rig/remove/all
execute positioned 45 64 80 run function fossil_frights:animations/tasks/easy/tnt_test/detonator/rig/summon {args:{}}
execute positioned 45 64 80 as @e[type=minecraft:item_display,tag=animation.detonator.root,distance=..4,sort=nearest,limit=1] at @s run function fossil_frights:animations/tasks/easy/tnt_test/detonator/rig/apply_default_pose
