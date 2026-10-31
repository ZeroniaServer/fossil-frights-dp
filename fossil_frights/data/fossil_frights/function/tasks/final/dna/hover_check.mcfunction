scoreboard players set #ff_dna_scan ff_dummy 6
scoreboard players set #ff_dna_hover_found ff_dummy 0
execute anchored eyes positioned ^ ^ ^0.5 run function fossil_frights:tasks/final/dna/raycast
execute if score #ff_dna_hover_found ff_dummy matches 0 as @e[type=minecraft:item_display,tag=ff_dna_hover] run function fossil_frights:tasks/final/dna/clear_hover
execute if score #ff_dna_hover_found ff_dummy matches 0 run tag @e[type=minecraft:item_display,tag=ff_dna_hover] remove ff_dna_hover
