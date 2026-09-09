scoreboard players set @s ff_dna_hover_found 1
tag @s add ff_dna_candidate
execute as @e[type=minecraft:item_display,tag=ff_dna_hover,tag=!ff_dna_candidate] run function fossil_frights:tasks/final/dna/clear_hover
tag @e[type=minecraft:item_display,tag=ff_dna_hover,tag=!ff_dna_candidate] remove ff_dna_hover
execute unless entity @s[tag=ff_dna_hover] if entity @s[tag=ff_sniffer_egg] run item modify entity @s contents {function:"minecraft:set_components",components:{"minecraft:item_model":"fossil-frights:display/tasks/lab_experiment/eggs/hovered_sniffer_egg"}}
execute unless entity @s[tag=ff_dna_hover] if entity @s[tag=ff_pterodactyl_egg] run item modify entity @s contents {function:"minecraft:set_components",components:{"minecraft:item_model":"fossil-frights:display/tasks/lab_experiment/eggs/hovered_pterodactyl_egg"}}
execute unless entity @s[tag=ff_dna_hover] if entity @s[tag=ff_plesiosaur_egg] run item modify entity @s contents {function:"minecraft:set_components",components:{"minecraft:item_model":"fossil-frights:display/tasks/lab_experiment/eggs/hovered_plesiosaur_egg"}}
execute unless entity @s[tag=ff_dna_hover] if entity @s[tag=ff_velociraptor_egg] run item modify entity @s contents {function:"minecraft:set_components",components:{"minecraft:item_model":"fossil-frights:display/tasks/lab_experiment/eggs/hovered_velociraptor_egg"}}
execute unless entity @s[tag=ff_dna_hover] if entity @s[tag=ff_trike_egg] run item modify entity @s contents {function:"minecraft:set_components",components:{"minecraft:item_model":"fossil-frights:display/tasks/lab_experiment/eggs/hovered_trike_egg"}}
execute unless entity @s[tag=ff_dna_hover] if entity @s[tag=ff_t_rex_egg] run item modify entity @s contents {function:"minecraft:set_components",components:{"minecraft:item_model":"fossil-frights:display/tasks/lab_experiment/eggs/hovered_t_rex_egg"}}
tag @s add ff_dna_hover
tag @s remove ff_dna_candidate
