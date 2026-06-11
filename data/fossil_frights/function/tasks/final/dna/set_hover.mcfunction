execute if items entity @s contents *[lore=[{text:"",extra:["sniffer_egg"]}]] run tag @s add ff_dna_hover
execute if items entity @s contents *[lore=[{text:"",extra:["pteradactyl_egg"]}]] run tag @s add ff_dna_hover
execute if items entity @s contents *[lore=[{text:"",extra:["plesiosaur_egg"]}]] run tag @s add ff_dna_hover
execute if items entity @s contents *[lore=[{text:"",extra:["velociraptor_egg"]}]] run tag @s add ff_dna_hover
execute if items entity @s contents *[lore=[{text:"",extra:["trike_egg"]}]] run tag @s add ff_dna_hover
execute if items entity @s contents *[lore=[{text:"",extra:["t_rex_egg"]}]] run tag @s add ff_dna_hover
execute if entity @s[tag=ff_dna_hover] run team join ff_dna_hover_yellow @s
execute if entity @s[tag=ff_dna_hover] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=ff_dna_hover] at @s positioned ~ ~-0.5 ~ unless entity @e[type=minecraft:interaction,tag=ff_dna_click,distance=..0.1,limit=1] run summon minecraft:interaction ~ ~ ~ {width:1.5f,height:1.5f,response:1b,Tags:["ff_dna_click"]}
execute if entity @s[tag=ff_dna_hover] at @s positioned ~ ~-0.5 ~ run scoreboard players set @e[type=minecraft:interaction,tag=ff_dna_click,distance=..0.1,limit=1] ff_lock_click_ttl 5
