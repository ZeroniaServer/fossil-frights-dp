## called as: player & positioned at library minecraft:shulker_box location
## called by: function nlib:module/database/player/inventory/load

# add shulker box
execute unless block ~ ~ ~ minecraft:shulker_box run setblock ~ ~ ~ minecraft:shulker_box[facing=up]{lock:{components:{"minecraft:custom_data":{id:master_key}}}} strict

# set hotbar.*
data modify block ~ ~ ~ Items set from storage nlib:dummy dummy.slot.hotbar
loot replace entity @s hotbar.0 mine ~ ~ ~ minecraft:fishing_rod[minecraft:custom_data={drop_contents:true}]

# set inventory.*
data modify block ~ ~ ~ Items set from storage nlib:dummy dummy.slot.inventory
loot replace entity @s inventory.0 mine ~ ~ ~ minecraft:fishing_rod[minecraft:custom_data={drop_contents:true}]

# set weapon.offhand, armor.* and saddle
data modify block ~ ~ ~ Items set from storage nlib:dummy dummy.slot.equipment
loot replace entity @s weapon.offhand mine ~ ~ ~ minecraft:fishing_rod[minecraft:custom_data={drop_contents:true}]

# set player.cursor and crafting.*
data modify block ~ ~ ~ Items set from storage nlib:dummy dummy.slot.special
loot replace entity @s player.cursor mine ~ ~ ~ minecraft:fishing_rod[minecraft:custom_data={drop_contents:true}]

# reset shulker box
data remove block ~ ~ ~ Items
