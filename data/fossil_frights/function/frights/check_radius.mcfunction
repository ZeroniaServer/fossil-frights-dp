tag @s remove ff_fright_target
tag @s remove ff_fright_target_sniffer
tag @s remove ff_fright_target_bats
tag @s remove ff_fright_target_creeper
tag @s remove ff_fright_target_skeleton
tag @s remove ff_fright_target_bogged
execute positioned 19.5 95.0 53.5 if entity @s[distance=..4] run tag @s add ff_fright_target_sniffer
execute positioned 22.5 106.0 84.5 if entity @s[distance=..4] run tag @s add ff_fright_target_bats
execute positioned 37.5 68.0 69.5 if entity @s[distance=..2.5] run tag @s add ff_fright_target_creeper
execute positioned 24.5 94.0 14.5 if entity @s[distance=..3] run tag @s add ff_fright_target_skeleton
execute positioned 67.5 77.0 74.5 if entity @s[distance=..2] run tag @s add ff_fright_target_bogged
execute if entity @s[tag=ff_fright_target_sniffer] run tag @s add ff_fright_target
execute if entity @s[tag=ff_fright_target_bats] run tag @s add ff_fright_target
execute if entity @s[tag=ff_fright_target_creeper] run tag @s add ff_fright_target
execute if entity @s[tag=ff_fright_target_skeleton] run tag @s add ff_fright_target
execute if entity @s[tag=ff_fright_target_bogged] run tag @s add ff_fright_target
execute if entity @s[tag=ff_fright_target] run scoreboard players add @s ff_fright_timer 1
execute unless entity @s[tag=ff_fright_target] run scoreboard players set @s ff_fright_timer 0
execute if entity @s[tag=ff_fright_target_creeper] if score @s ff_fright_timer matches 10.. run function fossil_frights:frights/fire_from_radius
execute if entity @s[tag=ff_fright_target_skeleton] if score @s ff_fright_timer matches 1.. run function fossil_frights:frights/fire_from_radius
execute if entity @s[tag=ff_fright_target_bogged] if score @s ff_fright_timer matches 1.. run function fossil_frights:frights/fire_from_radius
execute if entity @s[tag=ff_fright_target_sniffer] if score @s ff_fright_timer matches 30.. run function fossil_frights:frights/fire_from_radius
execute if entity @s[tag=ff_fright_target_bats] if score @s ff_fright_timer matches 30.. run function fossil_frights:frights/fire_from_radius
