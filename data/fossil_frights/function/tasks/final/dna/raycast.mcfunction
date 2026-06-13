execute unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:cave_air unless block ~ ~ ~ minecraft:void_air run scoreboard players set @s ff_dna_scan 0
execute if entity @e[type=minecraft:item_display,tag=ff_sniffer_egg,distance=..0.35,sort=nearest,limit=1] run scoreboard players set @s ff_dna_scan 0
execute if entity @e[type=minecraft:item_display,tag=ff_sniffer_egg,distance=..0.35,sort=nearest,limit=1] as @e[type=minecraft:item_display,tag=ff_sniffer_egg,distance=..0.35,sort=nearest,limit=1] run function fossil_frights:tasks/final/dna/set_hover
execute if entity @e[type=minecraft:item_display,tag=ff_plesiosaur_egg,distance=..0.35,sort=nearest,limit=1] run scoreboard players set @s ff_dna_scan 0
execute if entity @e[type=minecraft:item_display,tag=ff_plesiosaur_egg,distance=..0.35,sort=nearest,limit=1] as @e[type=minecraft:item_display,tag=ff_plesiosaur_egg,distance=..0.35,sort=nearest,limit=1] run function fossil_frights:tasks/final/dna/set_hover
execute if entity @e[type=minecraft:item_display,tag=ff_pterodactyl_egg,distance=..0.35,sort=nearest,limit=1] run scoreboard players set @s ff_dna_scan 0
execute if entity @e[type=minecraft:item_display,tag=ff_pterodactyl_egg,distance=..0.35,sort=nearest,limit=1] as @e[type=minecraft:item_display,tag=ff_pterodactyl_egg,distance=..0.35,sort=nearest,limit=1] run function fossil_frights:tasks/final/dna/set_hover
execute if entity @e[type=minecraft:item_display,tag=ff_trike_egg,distance=..0.35,sort=nearest,limit=1] run scoreboard players set @s ff_dna_scan 0
execute if entity @e[type=minecraft:item_display,tag=ff_trike_egg,distance=..0.35,sort=nearest,limit=1] as @e[type=minecraft:item_display,tag=ff_trike_egg,distance=..0.35,sort=nearest,limit=1] run function fossil_frights:tasks/final/dna/set_hover
execute if entity @e[type=minecraft:item_display,tag=ff_t_rex_egg,distance=..0.35,sort=nearest,limit=1] run scoreboard players set @s ff_dna_scan 0
execute if entity @e[type=minecraft:item_display,tag=ff_t_rex_egg,distance=..0.35,sort=nearest,limit=1] as @e[type=minecraft:item_display,tag=ff_t_rex_egg,distance=..0.35,sort=nearest,limit=1] run function fossil_frights:tasks/final/dna/set_hover
execute if entity @e[type=minecraft:item_display,tag=ff_velociraptor_egg,distance=..0.35,sort=nearest,limit=1] run scoreboard players set @s ff_dna_scan 0
execute if entity @e[type=minecraft:item_display,tag=ff_velociraptor_egg,distance=..0.35,sort=nearest,limit=1] as @e[type=minecraft:item_display,tag=ff_velociraptor_egg,distance=..0.35,sort=nearest,limit=1] run function fossil_frights:tasks/final/dna/set_hover
scoreboard players remove @s ff_dna_scan 1
execute if score @s ff_dna_scan matches 1.. positioned ^ ^ ^0.5 run function fossil_frights:tasks/final/dna/raycast
