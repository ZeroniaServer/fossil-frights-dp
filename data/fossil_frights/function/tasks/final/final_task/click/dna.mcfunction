advancement revoke @s only fossil_frights:final_task_dna_analyzer_click
execute unless entity @s[tag=ff_active] run return 0
execute unless score $final_task_sel ff_task_state matches 1 run return 0
execute unless score $final_task_done ff_task_state matches 0 run return 0
execute unless score $final_task_dna_done ff_task_state matches 0 run return 0
execute if score $final_task_dino ff_task_state matches 1 if items entity @s weapon.mainhand minecraft:paper[minecraft:lore=[{text:"",extra:["pterodactyl_dna_cloth"]}]] run function fossil_frights:tasks/final/final_task/click/dna/accept/pterodactyl
execute if score $final_task_dino ff_task_state matches 2 if items entity @s weapon.mainhand minecraft:paper[minecraft:lore=[{text:"",extra:["plesiosaur_dna_cloth"]}]] run function fossil_frights:tasks/final/final_task/click/dna/accept/plesiosaur
execute if score $final_task_dino ff_task_state matches 3 if items entity @s weapon.mainhand minecraft:paper[minecraft:lore=[{text:"",extra:["trike_dna_cloth"]}]] run function fossil_frights:tasks/final/final_task/click/dna/accept/trike
execute if score $final_task_dino ff_task_state matches 4 if items entity @s weapon.mainhand minecraft:paper[minecraft:lore=[{text:"",extra:["sniffer_dna_cloth"]}]] run function fossil_frights:tasks/final/final_task/click/dna/accept/sniffer
execute if score $final_task_dino ff_task_state matches 5 if items entity @s weapon.mainhand minecraft:paper[minecraft:lore=[{text:"",extra:["t_rex_dna_cloth"]}]] run function fossil_frights:tasks/final/final_task/click/dna/accept/t_rex
execute if score $final_task_dino ff_task_state matches 6 if items entity @s weapon.mainhand minecraft:paper[minecraft:lore=[{text:"",extra:["velociraptor_dna_cloth"]}]] run function fossil_frights:tasks/final/final_task/click/dna/accept/velociraptor
