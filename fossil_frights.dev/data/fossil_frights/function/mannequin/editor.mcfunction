execute unless entity @e[type=minecraft:mannequin,distance=..5,sort=nearest,limit=1] run tellraw @s {text:"No mannequin found within 5 blocks.",color:"red"}
execute unless entity @e[type=minecraft:mannequin,distance=..5,sort=nearest,limit=1] run return 0
tag @s add ff_mannequin_editor_player
execute at @s as @e[type=minecraft:mannequin,distance=..5,sort=nearest,limit=1] run function fossil_frights:mannequin/editor/open
tag @s remove ff_mannequin_editor_player
