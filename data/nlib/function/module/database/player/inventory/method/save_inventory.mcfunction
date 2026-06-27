## called when: saving player inventory
## called by: function nlib:module/database/player/inventory/save

# save container: hotbar and inventory
data modify storage nlib:dummy dummy.i set from entity @s Inventory
data remove storage nlib:dummy dummy.i[{components:{"minecraft:custom_data":{nlib:{save:false}}}}]
function nlib:module/database/player/inventory/method/save/sort/loop

# save equipment: offhand, armor, and saddle
execute if items entity @s weapon.offhand *[!minecraft:custom_data~{nlib:{save:false}}] run function nlib:module/database/player/inventory/method/save/slot/equipment/offhand
execute if items entity @s armor.feet *[!minecraft:custom_data~{nlib:{save:false}}] run function nlib:module/database/player/inventory/method/save/slot/equipment/feet
execute if items entity @s armor.legs *[!minecraft:custom_data~{nlib:{save:false}}] run function nlib:module/database/player/inventory/method/save/slot/equipment/legs
execute if items entity @s armor.chest *[!minecraft:custom_data~{nlib:{save:false}}] run function nlib:module/database/player/inventory/method/save/slot/equipment/chest
execute if items entity @s armor.head *[!minecraft:custom_data~{nlib:{save:false}}] run function nlib:module/database/player/inventory/method/save/slot/equipment/head
execute if items entity @s armor.body *[!minecraft:custom_data~{nlib:{save:false}}] run function nlib:module/database/player/inventory/method/save/slot/equipment/body
execute if items entity @s saddle *[!minecraft:custom_data~{nlib:{save:false}}] run function nlib:module/database/player/inventory/method/save/slot/equipment/saddle

# save special: cursor and crafting grid
tag @s add THIS_PLAYER_
execute if items entity @s player.cursor *[!minecraft:custom_data~{nlib:{save:false}}] summon minecraft:item_display run function nlib:module/database/player/inventory/method/save/slot/cursor
execute if items entity @s player.crafting.0 *[!minecraft:custom_data~{nlib:{save:false}}] summon minecraft:item_display run function nlib:module/database/player/inventory/method/save/slot/crafting/0
execute if items entity @s player.crafting.1 *[!minecraft:custom_data~{nlib:{save:false}}] summon minecraft:item_display run function nlib:module/database/player/inventory/method/save/slot/crafting/1
execute if items entity @s player.crafting.2 *[!minecraft:custom_data~{nlib:{save:false}}] summon minecraft:item_display run function nlib:module/database/player/inventory/method/save/slot/crafting/2
execute if items entity @s player.crafting.3 *[!minecraft:custom_data~{nlib:{save:false}}] summon minecraft:item_display run function nlib:module/database/player/inventory/method/save/slot/crafting/3
tag @s remove THIS_PLAYER_
