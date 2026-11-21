function fossil_frights:game/heists/detonator/cleanup
execute positioned 2 109 52 run function fossil_frights:animations/tasks/easy/tnt_test/detonator/rig/summon {args:{}}
execute positioned 2 109 52 as @e[type=minecraft:item_display,tag=animation.detonator.root,distance=..0.1,sort=nearest,limit=1] at @s run tag @s add ff_heist_detonator
execute as @e[type=minecraft:item_display,tag=ff_heist_detonator] at @s run function fossil_frights:animations/tasks/easy/tnt_test/detonator/rig/apply_default_pose
setblock 2 109 52 minecraft:chorus_plant strict
setblock 8 109 53 minecraft:tnt strict
setblock -4 109 53 minecraft:tnt strict
fill 7 109 53 -3 109 53 minecraft:redstone_wire[east=side,west=side] strict
setblock 2 109 53 minecraft:redstone_wire[east=side,west=side,north=side] strict
