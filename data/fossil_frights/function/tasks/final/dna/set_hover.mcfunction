execute if data entity @s {Item:{id:"minecraft:egg",components:{"minecraft:lore":[{text:"",extra:["sniffer_egg"]}]}}} run tag @s add ff_dna_hover
execute if data entity @s {Item:{id:"minecraft:egg",components:{"minecraft:lore":[{text:"",extra:["pteradactyl_egg"]}]}}} run tag @s add ff_dna_hover
execute if data entity @s {Item:{id:"minecraft:egg",components:{"minecraft:lore":[{text:"",extra:["plesiosaur_egg"]}]}}} run tag @s add ff_dna_hover
execute if data entity @s {Item:{id:"minecraft:egg",components:{"minecraft:lore":[{text:"",extra:["velociraptor_egg"]}]}}} run tag @s add ff_dna_hover
execute if data entity @s {Item:{id:"minecraft:egg",components:{"minecraft:lore":[{text:"",extra:["trike_egg"]}]}}} run tag @s add ff_dna_hover
execute if data entity @s {Item:{id:"minecraft:egg",components:{"minecraft:lore":[{text:"",extra:["t_rex_egg"]}]}}} run tag @s add ff_dna_hover
execute if entity @s[tag=ff_dna_hover] run team join ff_dna_hover_yellow @s
execute if entity @s[tag=ff_dna_hover] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=ff_dna_hover] at @s unless entity @e[type=minecraft:interaction,tag=ff_dna_click,distance=..0.1,limit=1] run summon minecraft:interaction ~ ~ ~ {width:0.75f,height:0.75f,response:1b,Tags:["ff_dna_click"]}
execute if entity @s[tag=ff_dna_hover] at @s run scoreboard players set @e[type=minecraft:interaction,tag=ff_dna_click,distance=..0.1,limit=1] ff_lock_click_ttl 5
