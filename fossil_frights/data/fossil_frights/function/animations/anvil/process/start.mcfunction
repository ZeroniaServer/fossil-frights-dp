execute unless entity @s[type=minecraft:item_display] run return 0

tag @s add ff_anvil.process
rotate @s 0 0
item replace entity @s contents from block 0 0 0 container.1
data merge entity @s {view_range:0}

data modify storage fossil_frights:anvil step set value 0

execute positioned 39 81.82 62 rotated 0 0 run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:display/anvil/mace",nbt:{Tags:["ff_anvil.display","ff_anvil.mace_display"],item_display:"fixed",teleport_duration:2,interpolation_duration:2,transformation:{right_rotation:[0,0,0,1],scale:[1,1,1.15],left_rotation:[0,1,0,1],translation:[0,0,0]}}}

#function fossil_frights:animations/anvil/process/finish
schedule function fossil_frights:animations/anvil/process/step 1t append
