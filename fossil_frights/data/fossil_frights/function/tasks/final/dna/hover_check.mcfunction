scoreboard players set @s ff_dna_scan 6
scoreboard players set @s ff_dna_hover_found 0
execute anchored eyes positioned ^ ^ ^0.5 run function fossil_frights:tasks/final/dna/raycast
execute if score @s ff_dna_hover_found matches 0 as @e[type=minecraft:item_display,tag=ff_dna_hover] run function fossil_frights:tasks/final/dna/clear_hover
execute if score @s ff_dna_hover_found matches 0 run tag @e[type=minecraft:item_display,tag=ff_dna_hover] remove ff_dna_hover
