function fossil_frights:game/heists/detonator/cleanup
execute positioned 6 109 55 run function fossil_frights:animations/tasks/easy/tnt_test/detonator/rig/summon {args:{}}
execute positioned 6 109 55 as @e[type=minecraft:item_display,tag=animation.detonator.root,distance=..0.1,sort=nearest,limit=1] at @s run tag @s add ff_heist_detonator
execute as @e[type=minecraft:item_display,tag=ff_heist_detonator] at @s run function fossil_frights:animations/tasks/easy/tnt_test/detonator/rig/apply_default_pose
setblock 6 109 55 minecraft:chorus_plant strict
setblock 8 109 53 minecraft:tnt strict
setblock 7 109 55 minecraft:redstone_wire[east=side,west=side,power=0] strict
setblock 8 109 55 minecraft:redstone_wire[west=side,north=side,power=0] strict
setblock 8 109 54 minecraft:redstone_wire[north=side,south=side,power=0] strict
setblock -4 109 53 minecraft:tnt strict
fill -4 109 55 -4 109 54 minecraft:redstone_wire[north=side,south=side,power=0] strict
