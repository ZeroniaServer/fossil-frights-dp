kill @e[type=minecraft:interaction,tag=ff_heist_loot_misplaced_scissors_click]
execute as @e[type=minecraft:item_display,tag=fh_scissors,tag=ff_heist_scissors_active,limit=1] at @s run summon minecraft:interaction ~ ~-0.5 ~ {width:1f,height:1f,response:true,Tags:["ff_heist_loot_interaction","ff_heist_loot_click","ff_heist_loot_misplaced_scissors_click"]}
