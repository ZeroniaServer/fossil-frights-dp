advancement revoke @s only fossil_frights:tasks/final/final_task/dna_analyzer_click
execute unless entity @s[predicate=fossil_frights:player/team/guard] run return 0
execute unless score $final_task_sel ff_task_state matches 1 run return 0
execute unless score $final_task_done ff_task_state matches 0 run return 0
execute unless score $final_task_dna_done ff_task_state matches 0 run return 0
execute if score $final_task_dino ff_task_state matches 1 run function fossil_frights:tasks/final/final_task/click/dna/check {id:"pterodactyl_dna_cloth"}
execute if score $final_task_dino ff_task_state matches 2 run function fossil_frights:tasks/final/final_task/click/dna/check {id:"plesiosaur_dna_cloth"}
execute if score $final_task_dino ff_task_state matches 3 run function fossil_frights:tasks/final/final_task/click/dna/check {id:"trike_dna_cloth"}
execute if score $final_task_dino ff_task_state matches 4 run function fossil_frights:tasks/final/final_task/click/dna/check {id:"sniffer_dna_cloth"}
execute if score $final_task_dino ff_task_state matches 5 run function fossil_frights:tasks/final/final_task/click/dna/check {id:"t_rex_dna_cloth"}
execute if score $final_task_dino ff_task_state matches 6 run function fossil_frights:tasks/final/final_task/click/dna/check {id:"velociraptor_dna_cloth"}
