particle minecraft:wax_on ~ ~0.3 ~ 0.2 0.3 0.2 0.5 10 force
execute if entity @s[tag=ff_plesiosaur_egg] as @a[tag=ff_dna_user,limit=1] run function fossil_frights:tasks/final/dna/give_reward/plesiosaur
execute if entity @s[tag=ff_velociraptor_egg] as @a[tag=ff_dna_user,limit=1] run function fossil_frights:tasks/final/dna/give_reward/velociraptor
execute if entity @s[tag=ff_trike_egg] as @a[tag=ff_dna_user,limit=1] run function fossil_frights:tasks/final/dna/give_reward/trike
execute if entity @s[tag=ff_t_rex_egg] as @a[tag=ff_dna_user,limit=1] run function fossil_frights:tasks/final/dna/give_reward/t_rex
execute if entity @s[tag=ff_pterodactyl_egg] as @a[tag=ff_dna_user,limit=1] run function fossil_frights:tasks/final/dna/give_reward/pterodactyl
execute if entity @s[tag=ff_sniffer_egg] as @a[tag=ff_dna_user,limit=1] run function fossil_frights:tasks/final/dna/give_reward/sniffer
