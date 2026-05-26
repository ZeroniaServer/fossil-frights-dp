particle minecraft:wax_on ~ ~0.3 ~ 0.2 0.3 0.2 0.5 10 force
execute if data entity @s {item:{id:"minecraft:egg",components:{"minecraft:lore":[{text:"",extra:["plesiosaur_egg"]}]}}} as @a[tag=ff_dna_user,limit=1] run function fossil_frights:items/dna/cloth/plesiosaur
execute if data entity @s {item:{id:"minecraft:egg",components:{"minecraft:lore":[{text:"",extra:["velociraptor_egg"]}]}}} as @a[tag=ff_dna_user,limit=1] run function fossil_frights:items/dna/cloth/velociraptor
execute if data entity @s {item:{id:"minecraft:egg",components:{"minecraft:lore":[{text:"",extra:["trike_egg"]}]}}} as @a[tag=ff_dna_user,limit=1] run function fossil_frights:items/dna/cloth/trike
execute if data entity @s {item:{id:"minecraft:egg",components:{"minecraft:lore":[{text:"",extra:["t_rex_egg"]}]}}} as @a[tag=ff_dna_user,limit=1] run function fossil_frights:items/dna/cloth/t_rex
execute if data entity @s {item:{id:"minecraft:egg",components:{"minecraft:lore":[{text:"",extra:["pteradactyl_egg"]}]}}} as @a[tag=ff_dna_user,limit=1] run function fossil_frights:items/dna/cloth/pteradactyl
execute if data entity @s {item:{id:"minecraft:egg",components:{"minecraft:lore":[{text:"",extra:["sniffer_egg"]}]}}} as @a[tag=ff_dna_user,limit=1] run function fossil_frights:items/dna/cloth/sniffer
