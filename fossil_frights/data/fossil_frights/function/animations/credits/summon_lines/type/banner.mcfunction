execute positioned ~ ~-1.52 ~ run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:display/fossil_frights_banner",nbt:{Tags:["ff_credits","ff_credits_scroll","ff_credits_scroll.title"],width:9,height:2.5,teleport_duration:1,brightness:{sky:15,block:15},item_display:"fixed",transformation:{right_rotation:[0,0,0,1],scale:[0.725,0.725,0.725],left_rotation:{axis:[0,1,0],angle:3.14159265359},translation:[0,1.52,0.09]}}}

data remove storage fossil_frights:credits credits[0]
execute positioned ~ ~-2.2 ~ run return run function fossil_frights:animations/credits/summon_lines/loop
