execute unless data entity @s {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{ff_dna:1b}}}} run return 0
execute unless entity @e[type=minecraft:item_frame,tag=ff_dna_hover,sort=nearest,limit=1,distance=..8] run return 0
execute as @e[type=minecraft:item_frame,tag=ff_dna_hover,sort=nearest,limit=1,distance=..8] at @s run function fossil_frights:tasks/final/dna/give_reward
