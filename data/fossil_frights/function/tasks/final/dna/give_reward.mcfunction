particle minecraft:wax_on ~ ~0.3 ~ 0.2 0.3 0.2 0.5 10 force
execute if items entity @s contents *[lore=[{text:"",extra:["plesiosaur_egg"]}]] as @a[tag=ff_dna_user,limit=1] run function fossil_frights:tasks/final/dna/give_reward/plesiosaur
execute if items entity @s contents *[lore=[{text:"",extra:["velociraptor_egg"]}]] as @a[tag=ff_dna_user,limit=1] run function fossil_frights:tasks/final/dna/give_reward/velociraptor
execute if items entity @s contents *[lore=[{text:"",extra:["trike_egg"]}]] as @a[tag=ff_dna_user,limit=1] run function fossil_frights:tasks/final/dna/give_reward/trike
execute if items entity @s contents *[lore=[{text:"",extra:["t_rex_egg"]}]] as @a[tag=ff_dna_user,limit=1] run function fossil_frights:tasks/final/dna/give_reward/t_rex
execute if items entity @s contents *[lore=[{text:"",extra:["pterodactyl_egg"]}]] as @a[tag=ff_dna_user,limit=1] run function fossil_frights:tasks/final/dna/give_reward/pterodactyl
execute if items entity @s contents *[lore=[{text:"",extra:["sniffer_egg"]}]] as @a[tag=ff_dna_user,limit=1] run function fossil_frights:tasks/final/dna/give_reward/sniffer
