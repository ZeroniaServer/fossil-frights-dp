tag @s add ff_febreeze_rod.player
execute as @a[tag=ff_febreeze_rod.target] run damage @s 1 minecraft:player_attack by @a[limit=1,tag=ff_febreeze_rod.player]
tag @s remove ff_febreeze_rod.player

execute as @a[tag=ff_febreeze_rod.target] unless score @s ff_febreeze_rod_fx matches 1.. run function fossil_frights:items/febreeze_rod/fx/start
scoreboard players add @a[tag=ff_febreeze_rod.target] ff_febreeze_rod_fx 4

tag @a[tag=ff_febreeze_rod.target] remove ff_febreeze_rod.target
