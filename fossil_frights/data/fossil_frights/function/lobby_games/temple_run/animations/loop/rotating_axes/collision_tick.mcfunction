execute if entity @e[type=minecraft:shulker,tag=tr_axe4_collision,distance=..1.25] at @s facing entity @e[type=minecraft:shulker,tag=tr_axe4_collision,distance=..1.25,sort=nearest,limit=1] feet run tp @s ^ ^ ^-0.16
execute if entity @e[type=minecraft:shulker,tag=tr_axe5_collision,distance=..1.25] at @s facing entity @e[type=minecraft:shulker,tag=tr_axe5_collision,distance=..1.25,sort=nearest,limit=1] feet run tp @s ^ ^ ^-0.16

execute if score @s ff_temple_run_axe_damage_cooldown matches 0 if entity @e[type=minecraft:shulker,tag=tr_axe4_collision,distance=..1.25] run function fossil_frights:lobby_games/temple_run/animations/loop/rotating_axes/collision_hit
execute if score @s ff_temple_run_axe_damage_cooldown matches 0 if entity @e[type=minecraft:shulker,tag=tr_axe5_collision,distance=..1.25] run function fossil_frights:lobby_games/temple_run/animations/loop/rotating_axes/collision_hit
