execute as @e[type=minecraft:item] if data entity @s {Item:{components:{"minecraft:custom_data":{itemID:"lady_bug"}}}} run tag @s add ff_heist_high_loot_drop
execute as @e[type=minecraft:item] if data entity @s {Item:{components:{"minecraft:custom_data":{itemID:"lady_bug"}}}} run tag @s add ff_heist_high_loot_drop_lady_bug
execute as @e[type=minecraft:item] if data entity @s {Item:{components:{"minecraft:custom_data":{itemID:"basketball"}}}} run tag @s add ff_heist_high_loot_drop
execute as @e[type=minecraft:item] if data entity @s {Item:{components:{"minecraft:custom_data":{itemID:"basketball"}}}} run tag @s add ff_heist_high_loot_drop_basketball
execute as @e[type=minecraft:item] if data entity @s {Item:{components:{"minecraft:custom_data":{itemID:"vault_key"}}}} run tag @s add ff_heist_high_loot_drop
execute as @e[type=minecraft:item] if data entity @s {Item:{components:{"minecraft:custom_data":{itemID:"vault_key"}}}} run tag @s add ff_heist_high_loot_drop_lost_key
execute as @e[type=minecraft:item] if data entity @s {Item:{components:{"minecraft:custom_data":{itemID:"hoverboard"}}}} run tag @s add ff_heist_high_loot_drop
execute as @e[type=minecraft:item] if data entity @s {Item:{components:{"minecraft:custom_data":{itemID:"hoverboard"}}}} run tag @s add ff_heist_high_loot_drop_hoverboard
execute as @e[type=minecraft:item] if data entity @s {Item:{components:{"minecraft:custom_data":{itemID:"sniffer_dna_cloth"}}}} run tag @s add ff_heist_high_loot_drop
execute as @e[type=minecraft:item] if data entity @s {Item:{components:{"minecraft:custom_data":{itemID:"sniffer_dna_cloth"}}}} run tag @s add ff_heist_high_loot_drop_sniffer_dna_cloth
execute as @e[type=minecraft:item] if data entity @s {Item:{components:{"minecraft:custom_data":{itemID:"trike_dna_cloth"}}}} run tag @s add ff_heist_high_loot_drop
execute as @e[type=minecraft:item] if data entity @s {Item:{components:{"minecraft:custom_data":{itemID:"trike_dna_cloth"}}}} run tag @s add ff_heist_high_loot_drop_trike_dna_cloth
execute as @e[type=minecraft:item] if data entity @s {Item:{components:{"minecraft:custom_data":{itemID:"t_rex_dna_cloth"}}}} run tag @s add ff_heist_high_loot_drop
execute as @e[type=minecraft:item] if data entity @s {Item:{components:{"minecraft:custom_data":{itemID:"t_rex_dna_cloth"}}}} run tag @s add ff_heist_high_loot_drop_t_rex_dna_cloth
execute as @e[type=minecraft:item] if data entity @s {Item:{components:{"minecraft:custom_data":{itemID:"velociraptor_dna_cloth"}}}} run tag @s add ff_heist_high_loot_drop
execute as @e[type=minecraft:item] if data entity @s {Item:{components:{"minecraft:custom_data":{itemID:"velociraptor_dna_cloth"}}}} run tag @s add ff_heist_high_loot_drop_velociraptor_dna_cloth
execute as @e[type=minecraft:item] if data entity @s {Item:{components:{"minecraft:custom_data":{itemID:"plesiosaur_dna_cloth"}}}} run tag @s add ff_heist_high_loot_drop
execute as @e[type=minecraft:item] if data entity @s {Item:{components:{"minecraft:custom_data":{itemID:"plesiosaur_dna_cloth"}}}} run tag @s add ff_heist_high_loot_drop_plesiosaur_dna_cloth
execute as @e[type=minecraft:item] if data entity @s {Item:{components:{"minecraft:custom_data":{itemID:"pteradactyl_dna_cloth"}}}} run tag @s add ff_heist_high_loot_drop
execute as @e[type=minecraft:item] if data entity @s {Item:{components:{"minecraft:custom_data":{itemID:"pteradactyl_dna_cloth"}}}} run tag @s add ff_heist_high_loot_drop_pteradactyl_dna_cloth
execute as @e[type=minecraft:item,tag=ff_heist_high_loot_drop,tag=!ff_heist_high_loot_drop_timed] run data merge entity @s {Age:5600s}
tag @e[type=minecraft:item,tag=ff_heist_high_loot_drop,tag=!ff_heist_high_loot_drop_timed] add ff_heist_high_loot_drop_timed
