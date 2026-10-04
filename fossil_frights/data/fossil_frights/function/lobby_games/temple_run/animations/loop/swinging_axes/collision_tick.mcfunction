scoreboard players add @s ff_temple_run_axe_damage_cooldown 0
scoreboard players remove @s[scores={ff_temple_run_axe_damage_cooldown=1..}] ff_temple_run_axe_damage_cooldown 1

# Push away from any active collision shulker.
execute if entity @e[type=minecraft:shulker,tag=tr_axe1_collision,distance=..1.0] at @s facing entity @e[type=minecraft:shulker,tag=tr_axe1_collision,distance=..1.0,sort=nearest,limit=1] feet run tp @s ^ ^ ^-0.12
execute if entity @e[type=minecraft:shulker,tag=tr_axe2_collision,distance=..1.0] at @s facing entity @e[type=minecraft:shulker,tag=tr_axe2_collision,distance=..1.0,sort=nearest,limit=1] feet run tp @s ^ ^ ^-0.12
execute if entity @e[type=minecraft:shulker,tag=tr_axe3_collision,distance=..1.0] at @s facing entity @e[type=minecraft:shulker,tag=tr_axe3_collision,distance=..1.0,sort=nearest,limit=1] feet run tp @s ^ ^ ^-0.12

execute if score @s ff_temple_run_axe_damage_cooldown matches 0 if entity @e[type=minecraft:shulker,tag=tr_axe1_collision,distance=..1.0] run function fossil_frights:lobby_games/temple_run/animations/loop/swinging_axes/collision_hit
execute if score @s ff_temple_run_axe_damage_cooldown matches 0 if entity @e[type=minecraft:shulker,tag=tr_axe2_collision,distance=..1.0] run function fossil_frights:lobby_games/temple_run/animations/loop/swinging_axes/collision_hit
execute if score @s ff_temple_run_axe_damage_cooldown matches 0 if entity @e[type=minecraft:shulker,tag=tr_axe3_collision,distance=..1.0] run function fossil_frights:lobby_games/temple_run/animations/loop/swinging_axes/collision_hit
