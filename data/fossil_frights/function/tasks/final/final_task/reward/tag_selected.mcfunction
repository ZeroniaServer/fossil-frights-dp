execute if score $final_task_dino ff_task_state matches 1 as @a[tag=ff_active,limit=1] run tag @s add obtained_pteradactyl_plushie
execute if score $final_task_dino ff_task_state matches 2 as @a[tag=ff_active,limit=1] run tag @s add obtained_plesiosaur_plushie
execute if score $final_task_dino ff_task_state matches 3 as @a[tag=ff_active,limit=1] run tag @s add obtained_trike_plushie
execute if score $final_task_dino ff_task_state matches 4 as @a[tag=ff_active,limit=1] run tag @s add obtained_sniffer_plushie
execute if score $final_task_dino ff_task_state matches 5 as @a[tag=ff_active,limit=1] run tag @s add obtained_t_rex_plushie
execute if score $final_task_dino ff_task_state matches 6 as @a[tag=ff_active,limit=1] run tag @s add obtained_velociraptor_plushie
execute as @a[tag=ff_active,limit=1] run function fossil_frights:advancements/checks/collect_them_all
